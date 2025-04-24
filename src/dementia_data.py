import json
import os
import aiosqlite
import pandas as pd
from pydantic import BaseModel

DATA_BASE = "database/dementia_predictions.db"

try:
    import aiosqlite
    print("aiosqlite imported successfully")
except ImportError as e:
    print(f"Error importing aiosqlite: {e}")

class QueryResults(BaseModel):
    display_format: str = ""
    json_format: str = ""

class DementiaData:
    def __init__(self: "DementiaData") -> None:
        self.conn = None

    async def connect(self: "DementiaData") -> None:
        env = os.getenv("ENV", "development")
        db_uri = f"file:{'src/' if env == 'development' else ''}{DATA_BASE}?mode=ro"

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
        """Return a list of table names in the database."""
        table_names = []
        async with self.conn.execute("SELECT name FROM sqlite_master WHERE type='table';") as tables:
            async for table in tables:
                if table[0] != "sqlite_sequence":
                    table_names.append(table[0])
        return table_names

    async def __get_column_info(self: "DementiaData", table_name: str) -> list:
        """Return a list of column names and types for a specified table."""
        column_info = []
        async with self.conn.execute(f"PRAGMA table_info('{table_name}');") as columns:
            async for col in columns:
                column_info.append(f"{col[1]}: {col[2]}")
        return column_info

    async def __get_input_types(self: "DementiaData") -> list:
        """Return a list of unique input types in the dementia_predictions table (e.g., 'clinical', 'audio')."""
        async with self.conn.execute("SELECT DISTINCT input_type FROM dementia_predictions;") as cursor:
            result = await cursor.fetchall()
        return [row[0] for row in result]

    async def __get_predictions(self: "DementiaData") -> list:
        """Return a list of unique prediction values from the dementia_predictions table."""
        async with self.conn.execute("SELECT DISTINCT prediction FROM dementia_predictions;") as cursor:
            result = await cursor.fetchall()
        return [row[0] for row in result]

    async def __get_years(self: "DementiaData") -> list:
        """Return a list of unique years extracted from the timestamp field."""
        async with self.conn.execute("SELECT DISTINCT strftime('%Y', timestamp) as year FROM dementia_predictions ORDER BY year;") as cursor:
            result = await cursor.fetchall()
        return [row[0] for row in result if row[0] is not None]

    async def get_database_info(self: "DementiaData") -> str:
        """Return a string containing the database schema information and common query fields."""
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

        input_types = await self.__get_input_types()
        predictions = await self.__get_predictions()
        years = await self.__get_years()

        database_info += f"\nInput Types: {', '.join(map(str, input_types))}"
        database_info += f"\nPrediction Values: {', '.join(map(str, predictions))}"
        database_info += f"\nPrediction Years: {', '.join(map(str, years))}"
        database_info += "\n\n"

        return database_info
    
    async def ask_database(self: "DementiaData", query: str) -> QueryResults:
        """Function to query SQLite database with a provided SQL query."""
        data_results = QueryResults()

        try:
            async with self.conn.execute(query) as cursor:
                rows = await cursor.fetchall()
                columns = [description[0] for description in cursor.description]

            if not rows:
                data_results.display_format = "The query returned no results. Try a different query."
                data_results.json_format = ""
            else:
                data = pd.DataFrame(rows, columns=columns)
                data_results.display_format = data.to_string(index=False)
                data_results.json_format = data.to_json(index=False, orient="split")

        except Exception as e:
            error_message = f"Query failed with error: {e}"
            data_results.display_format = error_message
            data_results.json_format = json.dumps({"error": str(e), "query": query})

        return data_results
