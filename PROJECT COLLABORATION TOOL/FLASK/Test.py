import sqlite3

# Connect to the SQLite database
conn = sqlite3.connect('users.db')

# Create a cursor object to execute SQL queries
cursor = conn.cursor()

try:
    # Define the SQL statement to create the user table
    create_table_query = """
    CREATE TABLE IF NOT EXISTS user (
        id INTEGER PRIMARY KEY,
        name TEXT NOT NULL,
        email TEXT UNIQUE NOT NULL,
        user_type TEXT NOT NULL,
        password TEXT NOT NULL
    )
    """

    # Execute the create table query
    cursor.execute(create_table_query)

    # Commit the transaction
    conn.commit()

    print("Table 'user' created successfully.")
except sqlite3.Error as e:
    print("Error creating table:", e)

# Close the cursor and connection
cursor.close()
conn.close()
