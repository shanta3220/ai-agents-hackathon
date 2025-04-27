import random
from datetime import datetime, timedelta

# Generate mock dementia prediction data
def generate_sql_insert():
    insert_statements = []

    for _ in range(500):  # Generate 500 mock entries
        input_type = random.choice(["clinical", "audio"])

        # Clinical inputs
        age = round(random.uniform(50, 90), 1) if input_type == "clinical" else "NULL"
        mmse = round(random.uniform(15, 30), 1) if input_type == "clinical" else "NULL"
        depression = random.randint(0, 1) if input_type == "clinical" else "NULL"

        # Audio inputs
        duration = round(random.uniform(1, 10), 2) if input_type == "audio" else "NULL"
        tempo = round(random.uniform(80, 160), 2) if input_type == "audio" else "NULL"
        zcr = round(random.uniform(0.01, 0.2), 4) if input_type == "audio" else "NULL"
        rms = round(random.uniform(0.01, 0.3), 4) if input_type == "audio" else "NULL"

        prediction = random.randint(0, 1)
        timestamp_str = (datetime.now() - timedelta(days=random.randint(0, 365))).strftime("%Y-%m-%d %H:%M:%S")

        insert_statements.append(
            f"""INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                '{input_type}', {age}, {mmse}, {depression},
                {duration}, {tempo}, {zcr}, {rms},
                {prediction}, '{timestamp_str}'
            );"""
        )

    return "\n".join(insert_statements)

# SQL to create the table
sql_script = f"""
-- Create the dementia_predictions table
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

-- Insert mock records
{generate_sql_insert()}
"""

# Save the script to file
with open("populate_dementia_data.sql", "w") as file:
    file.write(sql_script)

print("SQL script saved to 'populate_dementia_data.sql'")
