FROM mcr.microsoft.com/mssql/server:2022-latest

# Environment variables for SQL Server
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=YourStrongPassword123!
ENV MSSQL_PID=Developer

# Copy the SQL script into the container
COPY init.sql /docker-entrypoint-initdb.d/init.sql

# Expose the SQL Server port
EXPOSE 1433