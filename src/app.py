import asyncio
import logging
import os
from contextlib import suppress
from pathlib import Path
from typing import Any, Callable, Dict

import chainlit as cl
import openai
from chainlit.config import config
from dotenv import load_dotenv
from openai import AsyncAzureOpenAI, AzureOpenAI

from event_handler import EventHandler
from dementia_data import DementiaData 

from scripts.tools.model_tools import predict_health_risk, predict_audio_risk, predict_transcript_risk

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

load_dotenv("src/.env", override=True)

AZURE_OPENAI_ENDPOINT = os.environ.get("AZURE_OPENAI_ENDPOINT")
AZURE_OPENAI_API_KEY = os.environ.get("AZURE_OPENAI_API_KEY")
AZURE_OPENAI_API_VERSION = os.environ.get("AZURE_OPENAI_API_VERSION")
AZURE_OPENAI_ASSISTANT_ID = os.environ.get("AZURE_OPENAI_ASSISTANT_ID")
AZURE_OPENAI_DEPLOYMENT = os.getenv("AZURE_OPENAI_DEPLOYMENT")
ASSISTANT_PASSWORD = os.getenv("ASSISTANT_PASSWORD")

MAX_COMPLETION_TOKENS = 4096
MAX_PROMPT_TOKENS = 10240

dementia_data = DementiaData()
cl.instrument_openai()
ASSISTANT_READY = False

sync_openai_client = AzureOpenAI(
    azure_endpoint=AZURE_OPENAI_ENDPOINT,
    api_key=AZURE_OPENAI_API_KEY,
    api_version=AZURE_OPENAI_API_VERSION,
)

assistant = sync_openai_client.beta.assistants.retrieve(
    assistant_id=AZURE_OPENAI_ASSISTANT_ID,
)

async_openai_client = AsyncAzureOpenAI(
    azure_endpoint=AZURE_OPENAI_ENDPOINT,
    api_key=AZURE_OPENAI_API_KEY,
    api_version=AZURE_OPENAI_API_VERSION,
)

async def ask_database_handler(args):
    result = await dementia_data.ask_database(query=args.get("query"))
    return result.display_format

function_map: Dict[str, Callable[[Any], Any]] = {
    "ask_database": lambda args: dementia_data.ask_database(query=args.get("query")),
    "predict_health_risk": predict_health_risk,
    "predict_audio_risk": predict_audio_risk,
    "predict_transcript_risk": predict_transcript_risk,
    "list_columns": lambda args: dementia_data.list_columns(args.get("table")),
    "list_unique_values": lambda args: dementia_data.list_unique_values(args.get("table"), args.get("column")),
    "count_unique_values": lambda args: dementia_data.count_unique_values(args.get("table"), args.get("column")),
    "summarize_numeric_column": lambda args: dementia_data.summarize_numeric_column(args.get("table"), args.get("column")),
    "count_records": lambda args: dementia_data.count_records(args.get("table")),
}

@cl.password_auth_callback
async def auth_callback(username: str, password: str) -> cl.User | None:
    """Authenticate the user"""
    # Normally, you would check the username and password against a database.
    # Or use OAuth or custom provider for authentication.
    # See Chainlit documentation https://docs.chainlit.io/authentication/overview
    if (username, password) == ("user@nuroxa.com", ASSISTANT_PASSWORD):
        return cl.User(identifier="user@nuroxa.com", metadata={"role": "risk_analysis", "provider": "credentials"})
    return None


async def initialize() -> None:
    """Initialize the assistant with the user data schema and instructions."""
    global ASSISTANT_READY
    if ASSISTANT_READY:
        return

    await dementia_data.connect()
    database_schema_string = await dementia_data.get_database_info()

    env = os.getenv("ENV", "development")
    INSTRUCTIONS_FILE = "instructions.txt" if env == "production" else "src/instructions.txt"

    with open(INSTRUCTIONS_FILE, "r", encoding="utf-8", errors="ignore") as file:
        instructions = file.read()

    # Replace the placeholder with the database schema string
    instructions = instructions.replace("{database_schema_string}", database_schema_string)
 
    # Update assistant with new instructions
    sync_openai_client.beta.assistants.update(
        assistant_id=assistant.id,
        name="Nuroxa Assistant",  # You can change the name here if needed
        instructions=instructions,
        tools=[
            {"type": "code_interpreter"},
            {"type": "file_search"},
            {
                "type": "function",
                "function": {
                    "name": "ask_database",
                    "description": "This function is used to answer user questions about dementia risk prediction by executing SQLite queries.",
                    "parameters": {
                        "type": "object",
                        "properties": {
                            "query": {
                                "type": "string",
                                "description": "A valid SQLite query to extract risk-related metrics.",
                            }
                        },
                        "required": ["query"],
                        "additionalProperties": False,
                    },
                },
            },
        ],
    )

    tools_list = [
        {"type": "code_interpreter"},
        {"type": "file_search"},
        {
            "type": "function",
            "function": {
                "name": "ask_database",
                "description": "This function is used to answer user questions about Nuroxa's dementia risk prediction data by executing SQLite queries against the database.",
                "parameters": {
                    "type": "object",
                    "properties": {
                        "query": {
                            "type": "string",
                            "description": f"""
                                The input should be a well-formed SQLite query to extract information based on the user's question.
                                The query result will be returned as plain text, not in JSON format.
                            """,
                        }
                    },
                    "required": ["query"],
                    "additionalProperties": False,
                },
            },
        },
    {
        "type": "function",
        "function": {
            "name": "predict_health_risk",
            "description": "Predict dementia risk based on patient's health profile.",
            "parameters": {
                "type": "object",
                "properties": {
                    "Age": {"type": "number"},
                    "Gender": {"type": "integer"},
                    "Ethnicity": {"type": "integer"},
                    "EducationLevel": {"type": "integer"},
                    "BMI": {"type": "number"},
                    "Smoking": {"type": "integer"},
                    "AlcoholConsumption": {"type": "integer"},
                    "PhysicalActivity": {"type": "integer"},
                    "DietQuality": {"type": "integer"},
                    "SleepQuality": {"type": "integer"},
                    "FamilyHistoryAlzheimers": {"type": "integer"},
                    "CardiovascularDisease": {"type": "integer"},
                    "Diabetes": {"type": "integer"},
                    "Depression": {"type": "integer"},
                    "HeadInjury": {"type": "integer"},
                    "Hypertension": {"type": "integer"},
                    "SystolicBP": {"type": "number"},
                    "DiastolicBP": {"type": "number"},
                    "CholesterolTotal": {"type": "number"},
                    "CholesterolLDL": {"type": "number"},
                    "CholesterolHDL": {"type": "number"},
                    "CholesterolTriglycerides": {"type": "number"},
                    "MMSE": {"type": "integer"},
                    "FunctionalAssessment": {"type": "integer"},
                    "MemoryComplaints": {"type": "integer"},
                    "BehavioralProblems": {"type": "integer"},
                    "ADL": {"type": "integer"},
                    "Confusion": {"type": "integer"},
                    "Disorientation": {"type": "integer"},
                    "PersonalityChanges": {"type": "integer"},
                    "DifficultyCompletingTasks": {"type": "integer"},
                    "Forgetfulness": {"type": "integer"},
                },
                "required": [
                    "Age", "Gender", "BMI", "Smoking", "AlcoholConsumption",
                    "PhysicalActivity", "FamilyHistoryAlzheimers", "Hypertension", "SystolicBP", "DiastolicBP"
                ],
                "additionalProperties": False,
            },
        },
    },
    {
        "type": "function",
        "function": {
            "name": "predict_audio_risk",
            "description": "Predict dementia risk based on extracted audio features from a patient's speech.",
            "parameters": {
                "type": "object",
                "properties": {
                    "duration": {"type": "number"},
                    "tempo": {"type": "number"},
                    "zero_crossing_rate": {"type": "number"},
                    "rms_energy": {"type": "number"},
                },
                "required": ["duration", "tempo", "zero_crossing_rate", "rms_energy"],
                "additionalProperties": False,
            },
        },
    },
    {
        "type": "function",
        "function": {
            "name": "predict_transcript_risk",
            "description": "Predict dementia risk based on transcript speech features like word count, sentence count, etc. "
            "If not provided check the function some values are auto calculated.",
            "parameters": {
                "type": "object",
                "properties": {
                    "word_count": {"type": "number"},
                    "sentence_count": {"type": "number"},
                    "avg_sentence_length": {"type": "number"},
                    "pause_count": {"type": "number"},
                    "speech_rate": {"type": "number"},
                    "pause_per_sentence": {"type": "number"},
                },
                "required": ["word_count", "sentence_count", "avg_sentence_length", "pause_count", "speech_rate", "pause_per_sentence"],
                "additionalProperties": False,
            },
        },
    },
    {
    "type": "function",
        "function": {
            "name": "list_columns",
            "description": "List all columns in a specified database table.",
            "parameters": {
                "type": "object",
                "properties": {
                    "table": {"type": "string", "description": "The table name to list columns from."}
                },
                "required": ["table"],
            },
        },
    },
    {
        "type": "function",
        "function": {
            "name": "list_unique_values",
            "description": "List all unique values in a specified column of a table.",
            "parameters": {
                "type": "object",
                "properties": {
                    "table": {"type": "string", "description": "Table name."},
                    "column": {"type": "string", "description": "Column name."}
                },
                "required": ["table", "column"],
            },
        },
    },
    {
        "type": "function",
        "function": {
            "name": "count_unique_values",
            "description": "Count how many unique values are in a specified column.",
            "parameters": {
                "type": "object",
                "properties": {
                    "table": {"type": "string"},
                    "column": {"type": "string"}
                },
                "required": ["table", "column"],
            },
        },
    },
    {
        "type": "function",
        "function": {
            "name": "summarize_numeric_column",
            "description": "Summarize statistics (min, max, avg, median, std) of a numeric column.",
            "parameters": {
                "type": "object",
                "properties": {
                    "table": {"type": "string"},
                    "column": {"type": "string"}
                },
                "required": ["table", "column"],
            },
        },
    },
    {
        "type": "function",
        "function": {
            "name": "count_records",
            "description": "Count the total number of records in a table.",
            "parameters": {
                "type": "object",
                "properties": {
                    "table": {"type": "string"}
                },
                "required": ["table"],
            },
        },
    },
    ]

    try:
        sync_openai_client.beta.assistants.update(
            assistant_id=assistant.id,
            name="Nuroxa Assistant",
            model=AZURE_OPENAI_DEPLOYMENT,
            instructions=instructions,
            tools=tools_list
        )

        config.ui.name = assistant.name
        ASSISTANT_READY = True
    except openai.NotFoundError as e:
        logger.error("Assistant not found: %s", str(e))
    except Exception as e:
        logger.error("An error occurred initializing the assistant: %s", str(e))


@cl.set_starters
async def set_starters() -> list[cl.Starter]:
    """Set the starters for the Nuroxa Assistant."""
    return [
        cl.Starter(
            label="Help and Usage Guide",
            message="Help: How can I interact with you?",
            icon="/public/idea.svg",
        ),
        cl.Starter(
            label="Explore Database Columns",
            message="List all columns in the dementia_patients table.",
            icon="/public/database.svg",
        ),
        cl.Starter(
            label="Summarize Systolic Blood Pressure",
            message="Summarize the SystolicBP field (min, max, average, etc).",
            icon="/public/learn.svg",
        ),
        cl.Starter(
            label="Predict Risk from Partial Patient Profile",
            message="Predict dementia risk based on this patient: Age 72, Male, BMI 27, reports forgetfulness and hypertension.",
            icon="/public/terminal.svg",
        ),
        cl.Starter(
            label="Predict Risk from Audio Features",
            message="Predict dementia risk from audio features: duration 45s, tempo 85 bpm, zero crossing rate 0.04, rms energy 0.03.",
            icon="/public/audio.svg",
        ),
        cl.Starter(
            label="Predict Risk from Speech Transcript",
            message="Predict dementia risk from speech features: 250 words, 12 sentences, average sentence length 20, 30 pauses.",
            icon="/public/mic.svg",
        ),
    ]

async def get_thread_id(async_openai_client: AsyncAzureOpenAI) -> str:
    """Get the thread ID for the conversation"""
    if thread := cl.user_session.get("thread_id"):
        return thread

    try:
        thread = await async_openai_client.beta.threads.create()
        cl.user_session.set("thread_id", thread.id)
        # await cl.Message(content="New thread created.").send()
        return thread.id
    except Exception as e:
        await cl.Message(content=str(e)).send()
        return None


async def cancel_thread_run(thread_id: str) -> None:
    """Cancel all runs in a thread"""
    if not thread_id:
        return

    # Wait a moment for any pending runs to spin up for cleaner cancellation
    await asyncio.sleep(2)
    runs = await async_openai_client.beta.threads.runs.list(thread_id=thread_id)
    for run in runs.data:
        if run.status not in ["completed", "cancelled", "expired", "failed"]:
            with suppress(Exception):
                await client.beta.threads.runs.cancel(run_id=run.id, thread_id=thread_id)


async def get_attachments(message: cl.Message, async_openai_client: AsyncAzureOpenAI) -> Dict:
    """Upload attachments to the assistant"""
    file_paths = [file.path for file in message.elements]
    if not file_paths:
        return None

    await cl.Message(content="Uploading files.").send()
    message_files = []

    for path in file_paths:
        with Path(path).open("rb") as file:
            uploaded_file = await async_openai_client.files.create(file=file, purpose="assistants")
            message_files.append({"file_id": uploaded_file.id, "tools": [{"type": "file_search"}]})

    # Wait a moment for the uploaded files to become available
    await asyncio.sleep(2)
    await cl.Message(content="Uploading completed.").send()
    return message_files

@cl.on_chat_resume
async def on_chat_resume():
    await cl.Message(content="Session resumed! You can continue asking your next question.").send()

@cl.on_message
async def main(message: cl.Message) -> None:
    """Handle the conversation with the assistant"""
    completed = False

    if assistant is None:
        await cl.Message(content="An error occurred initializing the assistant.").send()
        logger.error("Assistant not initialized.")
        return

    await initialize()

    thread_id = await get_thread_id(async_openai_client)

    if not thread_id:
        await cl.Message(content="A thread wa not successfully created.").send()
        logger.error("Thread not successfully created.")
        return

    try:
        message_files = await get_attachments(message, async_openai_client)

        # Add a Message to the Thread
        await async_openai_client.beta.threads.messages.create(
            thread_id=thread_id,
            role="user",
            content=message.content,
            attachments=message_files,
        )

        # Create and Stream a Run
        async with async_openai_client.beta.threads.runs.stream(
            thread_id=thread_id,
            assistant_id=assistant.id,
            event_handler=EventHandler(
                function_map=function_map,
                assistant_name=assistant.name,
                async_openai_client=async_openai_client,
            ),
            temperature=0.2,
            max_completion_tokens=MAX_COMPLETION_TOKENS,
            max_prompt_tokens=MAX_PROMPT_TOKENS,
            instructions=assistant.instructions
        ) as stream:
            await stream.until_done()

        completed = True

    # triggered when the user stops a chat
    except asyncio.exceptions.CancelledError:
        pass

    except Exception as e:
        await cl.Message(content=f"An error occurred: {e}").send()
        await cl.Message(content="Please try again in a moment.").send()
        logger.error("An error calling the LLM occurred: %s", str(e))
    finally:
        if not completed:
            await cancel_thread_run(thread_id)
