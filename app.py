from flask import Flask, render_template, request, jsonify

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/signup', methods=['POST'])
def signup():
    data = request.json
    username = data['username']
    mail = data['mail']
    password = data['password']
    
    # Perform additional validation if needed
    
    # Save user details to a database (example with SQLite)
    import sqlite3
    conn = sqlite3.connect('users.db')
    cursor = conn.cursor()
    cursor.execute('''CREATE TABLE IF NOT EXISTS users
                      (username TEXT, mail TEXT, password TEXT)''')
    cursor.execute('INSERT INTO users (username, mail, password) VALUES (?, ?, ?)',
                   (username, mail, password))
    conn.commit()
    conn.close()
    
    return jsonify({'message': 'Sign up successful!'})

if __name__ == '__main__':
    app.run(debug=True)
