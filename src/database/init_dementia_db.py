import sqlite3

def create_dementia_db():
    conn = sqlite3.connect("dementia_predictions.db")
    cur = conn.cursor()

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
    )
    """)

    conn.commit()
    conn.close()
    print("Database and table created.")

# Run it once to initialize
if __name__ == "__main__":
    create_dementia_db()
