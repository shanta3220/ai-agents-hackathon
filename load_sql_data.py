import sqlite3

conn = sqlite3.connect("src/database/dementia.db")
cur = conn.cursor()
cur.execute("SELECT COUNT(*) FROM dementia_predictions")
count = cur.fetchone()[0]
print(f"{count} records found in dementia_predictions table.")
conn.close()