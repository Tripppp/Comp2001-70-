from flask import Flask, jsonify, request
from db_connection import get_db_connection
import logging
import pyodbc

app = Flask(__name__)

logging.basicConfig(level=logging.DEBUG)

@app.route('/trails', methods=['GET'])
def get_trails():
    try:
        conn = get_db_connection()
        cursor = conn.cursor()
        cursor.execute('SELECT TrailID, TrailName FROM CW2.Trails')
        trails = [{'TrailID': row[0], 'TrailName': row[1]} for row in cursor.fetchall()]
        conn.close()
        return jsonify(trails)
    except pyodbc.Error as db_err:
        logging.error(f"Database error: {db_err}")
        return jsonify({"error": "Database Error"}), 500
    except Exception as e:
        logging.error(f"Error fetching trails: {e}")
        return jsonify({"error": "Internal Server Error"}), 500

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001)