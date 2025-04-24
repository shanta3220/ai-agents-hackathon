import json
import os

import aiosqlite
import pandas as pd
from pydantic import BaseModel

DATA_BASE = "database/dementia_predictions.db"

class QueryResults(BaseModel):
    display_format: str = ""
    json_format: str = ""

class DementiaData:
    def __init__(self: "DementiaData") -> None:
        self.conn = None

    async def connect(self: "DementiaData") -> None:
        env = os.getenv("ENV", "development")
        if env == "development":
            db_uri = f"file:src/{DATA_BASE}?mode=ro"
        elif env == "production":
            db_uri = f"file:{DATA_BASE}?mode=ro"

        try:
            self.conn = await aiosqlite.connect(db_uri, uri=True)
            print("Database connection opened.")
        except aiosqlite.Error as e:
            print(f"An error occurred: {e}")
            self.conn = None

    async def close(self: "DementiaData") -> None:
        if self.conn:
            await self.conn.close()
            print("Database connection closed.")

    async def __get_table_names(self: "DementiaData") -> list:
        table_names = []
        async with self.conn.execute("SELECT name FROM sqlite_master WHERE type='table';") as tables:
            async for table in tables:
                if table[0] != "sqlite_sequence":
                    table_names.append(table[0])
        return table_names

    async def __get_column_info(self: "DementiaData", table_name: str) -> list:
        column_info = []
        async with self.conn.execute(f"PRAGMA table_info('{table_name}');") as columns:
            async for col in columns:
                column_info.append(f"{col[1]}: {col[2]}")
        return column_info

    async def get_database_info(self: "DementiaData") -> str:
        table_dicts = []
        for table_name in await self.__get_table_names():
            columns_names = await self.__get_column_info(table_name)
            table_dicts.append({"table_name": table_name, "column_names": columns_names})

        database_info = "\n".join(
            [
                f"Table {table['table_name']} Schema: Columns: {', '.join(table['column_names'])}"
                for table in table_dicts
            ]
        )
        return database_info

async def initialize():
    dementia_data = DementiaData()

    await dementia_data.connect()
    database_schema_string = await dementia_data.get_database_info()

    instructions = {
        "You are a helpful assistant specialized in dementia risk prediction analysis.",
        "Use the `ask_database` function for dementia risk queries against the SQLite database.",
        f"Reference the following SQLite schema for the dementia predictions database: {database_schema_string}.",
        "Default to aggregated summaries unless user asks for row-level detail.",
        "Present results in markdown tables unless visualization is requested.",
        "Always filter or group data by input_type or prediction if needed.",
        "Do not use sales or unrelated schemas. Focus strictly on dementia_predictions.db."
    }

    tools_list = [
        {"type": "code_interpreter"},
        {
            "type": "function",
            "function": {
                "name": "ask_database",
                "description": "This function answers dementia prediction-related questions by running SQLite queries.",
                "parameters": {
                    "type": "object",
                    "properties": {
                        "query": {
                            "type": "string",
                            "description": "A valid SQLite query for extracting information from the dementia_predictions table."
                        }
                    },
                    "required": ["query"],
                    "additionalProperties": False
                }
            }
        }
    ]

    try:
        sync_openai_client = AzureOpenAI(
            azure_endpoint=AZURE_OPENAI_ENDPOINT,
            api_key=api_key,
            api_version=AZURE_OPENAI_API_VERSION,
        )

        assistant = sync_openai_client.beta.assistants.retrieve(assistant_id=assistant_id)

        sync_openai_client.beta.assistants.update(
            assistant_id=assistant.id,
            name="Nuroxa Assistant",
            model=AZURE_OPENAI_DEPLOYMENT,
            instructions=str(instructions),
            tools=tools_list,
        )

        config.ui.name = assistant.name
        logger.info(f"Assistant initialized: {assistant.name}")

        return assistant
    except openai.NotFoundError as e:
        logger.error(f"Assistant not found: {e}")
        return None
    except Exception as e:
        logger.error(f"An error occurred initializing the assistant: {e}")
        return None
