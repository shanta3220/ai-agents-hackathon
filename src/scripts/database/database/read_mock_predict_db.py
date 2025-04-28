import sqlite3
import pandas as pd


conn = sqlite3.connect('src/database/dementia_predictions.db')
df = pd.read_sql_query("SELECT * FROM dementia_predictions", conn)
print(df)
conn.close()