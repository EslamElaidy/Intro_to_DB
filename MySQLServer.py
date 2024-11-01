import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Connect to MySQL server (adjust 'host', 'user', and 'password' as needed)
        connection = mysql.connector.connect(
            host='localhost',
            user='your_username',  # Replace with your MySQL username
            password='your_password'  # Replace with your MySQL password
        )

        if connection.is_connected():
            # Create a cursor to execute SQL statements
            cursor = connection.cursor()
            
            # Create database if it does not exist
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")
            
    except mysql.connector.Error as e:  # Catching specific MySQL errors
        print(f"Error: {e}")
        
    except Exception as e:  # Catch any other exceptions
        print(f"An unexpected error occurred: {e}")

    finally:
        # Close cursor and connection
        if 'cursor' in locals() and cursor is not None:
            cursor.close()
        if connection.is_connected():
            connection.close()
            print("MySQL connection is closed.")

# Run the function
create_database()
