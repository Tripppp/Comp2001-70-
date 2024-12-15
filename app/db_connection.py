import pyodbc

def get_db_connection():
    connection = pyodbc.connect(
        'DRIVER={ODBC Driver 18 for SQL Server};'
        'SERVER=sql-server-db,1433,1433;'
        'DATABASE=master;'
        'UID=sa;'
        'PWD=YourStrongPassword123!;'
        'TrustServerCertificate=yes'
    )
    return connection