import json
from datetime import datetime
from ..games.dementia_games import DementiaTherapyGames
import chainlit as cl
from dementia_data import QueryResults

import json
from datetime import datetime
import chainlit as cl
from ..games.dementia_games import DementiaTherapyGames

async def generate_dementia_game(args):
    patient_data = args.get("patient_data") or {
        "Age": 75,
        "Gender": "Female",
        "BMI": 25.4,
        "Hypertension": "Yes",
        "MemoryComplaints": "Yes",
        "FamilyHistoryAlzheimers": "Yes",
        "CholesterolHDL": 50,
        "CholesterolLDL": 100,
        "MMSE": 28
    }

    game_module = DementiaTherapyGames(patient_data)
    game_details = game_module.display_game()
    game_type = game_details['game_type']

    # Save state
    cl.user_session.set("game_start_time", datetime.now())
    cl.user_session.set("game_type", game_type)
    cl.user_session.set("patient_data", patient_data)

    intro = (
        "🧾 **Current Patient Profile:**\n"
        f"```json\n{json.dumps(patient_data, indent=2)}\n```\n"
        "🛠️ You can update any individual value by saying something like:\n"
        "`Update age to 70 and set MMSE to 26.`\n\n"
    )

    if game_type == 'memory_match':
        puzzle = f"🧠 Starting your **Memory Match** game!\nMatch the pairs:\n\n{game_details['game']}"
    else:
        grid = game_details['game']
        grid_str = "\n".join([" ".join(row) for row in grid])
        puzzle = f"🧠 Starting your **Word Search** game!\nFind the words in this grid:\n```\n{grid_str}\n```"

    action = cl.Action(
        name="complete_game",
        value="done",
        label="✅ I'm Done"
    )

    msg = cl.Message(content=intro + puzzle + "\n\n✍️ When you're done, click one the `✅ I'm Done` button to see your score!")
    msg.actions = [action]
    await msg.send()

    return QueryResults(
        display_format="Game started. Waiting for user to complete...",
        json_format=json.dumps({"status": "waiting_for_done"})
    )
