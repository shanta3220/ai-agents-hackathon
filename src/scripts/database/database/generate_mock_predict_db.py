import sqlite3
import random
from datetime import datetime, timedelta

# Connect to a REAL .db file
conn = sqlite3.connect('src/database/dementia_predictions.db')
cur = conn.cursor()

# 1. Create table
cur.execute("""
CREATE TABLE IF NOT EXISTS dementia_predictions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    input_type TEXT,
    age REAL,
    mmse REAL,
    depression INTEGER,
    duration REAL,
    tempo REAL,
    zero_crossing_rate REAL,
    rms_energy REAL,
    prediction INTEGER,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
);
""")

# 2. Insert mock records
for _ in range(500):
    input_type = random.choice(["clinical", "audio"])

    # Clinical inputs
    age = round(random.uniform(50, 90), 1) if input_type == "clinical" else None
    mmse = round(random.uniform(15, 30), 1) if input_type == "clinical" else None
    depression = random.randint(0, 1) if input_type == "clinical" else None

    # Audio inputs
    duration = round(random.uniform(1, 10), 2) if input_type == "audio" else None
    tempo = round(random.uniform(80, 160), 2) if input_type == "audio" else None
    zcr = round(random.uniform(0.01, 0.2), 4) if input_type == "audio" else None
    rms = round(random.uniform(0.01, 0.3), 4) if input_type == "audio" else None

    prediction = random.randint(0, 1)
    timestamp = (datetime.now() - timedelta(days=random.randint(0, 365))).strftime("%Y-%m-%d %H:%M:%S")

    cur.execute("""
    INSERT INTO dementia_predictions (
        input_type, age, mmse, depression,
        duration, tempo, zero_crossing_rate, rms_energy,
        prediction, timestamp
    ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    """, (input_type, age, mmse, depression, duration, tempo, zcr, rms, prediction, timestamp))

# 3. Save and close
conn.commit()
conn.close()

print("Database 'dementia_predictions.db' created successfully!")
