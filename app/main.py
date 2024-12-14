from flask import Flask, jsonify, request
from db_connection import get_db_connection

app = Flask(__name__)

@app.route('/trails', methods=['GET'])
def get_trails():
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute('SELECT TrailID, TrailName FROM CW2.Trails')
    trails = [{'TrailID': row[0], 'TrailName': row[1]} for row in cursor.fetchall()]
    conn.close()
    return jsonify(trails)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001)