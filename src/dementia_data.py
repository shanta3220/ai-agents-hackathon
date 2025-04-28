import json
import os
import aiosqlite
import pandas as pd
from pydantic import BaseModel

DATA_BASE = "database/dementia_patients.db"

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

    async def __get_distinct_values(self: "DementiaData", table: str, column: str) -> list:
        """Generic function to get distinct values from a column."""
        async with self.conn.execute(f"SELECT DISTINCT {column} FROM {table};") as cursor:
            result = await cursor.fetchall()
        return [row[0] for row in result if row[0] is not None]

    async def get_database_info(self: "DementiaData") -> str:
        """Return a string containing the database schema information."""
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

        database_info += "\n\n"
        return database_info

    async def ask_database(self: "DementiaData", query: str, limit: int = None) -> QueryResults:
        """Function to query SQLite database with a provided SQL query, with optional LIMIT for performance."""
        data_results = QueryResults()

        if limit is not None:
            query = f"{query.strip().rstrip(';')} LIMIT {limit};"

        try:
            async with self.conn.execute(query) as cursor:
                columns = [description[0] for description in cursor.description]
                rows = []
                async for row in cursor:
                    rows.append(row)

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

    

    async def list_columns(self: "DementiaData", table: str) -> QueryResults:
        columns = await self.__get_column_info(table)
        text = f"### Columns in `{table}`:\n" + "\n".join(f"- {col}" for col in columns)
        return QueryResults(
            display_format=text,
            json_format=json.dumps({"table": table, "columns": columns})
        )

    async def list_unique_values(self: "DementiaData", table: str, column: str) -> QueryResults:
        values = await self.__get_distinct_values(table, column)
        if not values:
            text = f"No unique values found for `{column}` in `{table}`."
            json_data = {"table": table, "column": column, "values": []}
        else:
            text = f"### Unique values for `{column}` in `{table}`:\n" + "\n".join(f"- {val}" for val in values)
            json_data = {"table": table, "column": column, "values": values}
        return QueryResults(
            display_format=text,
            json_format=json.dumps(json_data)
        )

    async def count_unique_values(self: "DementiaData", table: str, column: str) -> QueryResults:
        query = f"SELECT COUNT(DISTINCT {column}) FROM {table};"
        async with self.conn.execute(query) as cursor:
            result = await cursor.fetchone()
        count = result[0] if result else 0
        return QueryResults(
            display_format=f"There are **{count}** unique values in `{column}` of `{table}`.",
            json_format=json.dumps({"table": table, "column": column, "unique_count": count})
        )


    async def summarize_numeric_column(self: "DementiaData", table: str, column: str) -> QueryResults:
        summary = {}
        async with self.conn.execute(f"SELECT MIN({column}), MAX({column}), AVG({column}), "
                                    f"(SELECT {column} FROM {table} ORDER BY {column} LIMIT 1 OFFSET (SELECT COUNT(*) FROM {table})/2), "
                                    f"(SELECT AVG( ({column} - (SELECT AVG({column}) FROM {table})) * "
                                    f"({column} - (SELECT AVG({column}) FROM {table})) ) FROM {table}) as variance "
                                    f"FROM {table};") as cursor:
            row = await cursor.fetchone()

        if row:
            summary = {
                "min": row[0],
                "max": row[1],
                "average": row[2],
                "median": row[3],
                "std_dev": (row[4] or 0) ** 0.5,
            }

        text = f"""### Summary for `{column}` in `{table}`:
    - Min: {summary.get('min')}
    - Max: {summary.get('max')}
    - Average: {summary.get('average')}
    - Median: {summary.get('median')}
    - Std Dev: {summary.get('std_dev')}
"""
        return QueryResults(
            display_format=text,
            json_format=json.dumps({"table": table, "column": column, "summary": summary})
        )

    async def count_records(self: "DementiaData", table: str) -> QueryResults:
        async with self.conn.execute(f"SELECT COUNT(*) FROM {table};") as cursor:
            result = await cursor.fetchone()
        count = result[0] if result else 0
        return QueryResults(
        display_format=f"There are **{count}** total records in `{table}`.",
        json_format=json.dumps({"table": table, "record_count": count})
    )