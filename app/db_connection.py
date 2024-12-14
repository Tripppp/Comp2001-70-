import pyodbc

def get_db_connection():
    connection = pyodbc.connect(
        'DRIVER={ODBC Driver 17 for SQL Server};'
        'SERVER=sql-server-db;'
        'DATABASE=TrailDB;'
        'UID=sa;'
        'PWD=YourStrongPassword123!'
    )
    return connection