import sqlite3
import pandas as pd


conn = sqlite3.connect('src/database/dementia_patients.db')
df = pd.read_sql_query("SELECT * FROM dementia_patients", conn)
print(df)
conn.close()