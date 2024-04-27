from flask import Flask, render_template, request, redirect, url_for
from flask_sqlalchemy import SQLAlchemy


app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///users.db'
db = SQLAlchemy(app)

# app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///users.db'
# db = SQLAlchemy(app)


# User Table
class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(25), nullable=False)
    email = db.Column(db.String(100), unique=True, nullable=False)
    user_type = db.Column(db.String(100), nullable=False)
    password = db.Column(db.String(100), nullable=False)

# User Types in Tool
user_types = ['Project Manager', 'Admin', 'Team Lead', 'Team Member']


@app.route('/')
def index():
    return render_template('index.html')

@app.route('/register', methods=['POST', 'GET'])
def register():
    if request.method == 'POST':
        name = request.form['name']
        email = request.form['email']
        user_type = request.form['user_type']
        password = request.form['password']


        # Creating New User 
        new_user = User(name=name, email=email, user_type=user_type, password=password)

        # Adding New User to the Database
        db.session.add(new_user)
        db.session.commit()

        return redirect(url_for('login'))
    return render_template('register.html', user_types=user_types)

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        email = request.form['email']
        user_type = request.form['user_type']
        password = request.form['password']

        # Query the database to find the user
        user = User.query.filter_by(email=email, user_type=user_type, password=password).first()

        if user:
            return f"Welcome, {user.name}!"
        else:
            return "Invalid email, user type, or password. Please try again."

    return render_template('login.html', user_types=user_types)


if __name__ == '__main__':
    with app.app_context():
        db.create_all()
    app.run(debug=True)