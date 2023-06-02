import mysql.connector

# Define the database connection information
DB_HOST="localhost"
DB_PORT="3306"
DB_USERNAME="root"
DB_PASSWORD="password"
DB_NAME="mydb"

# Create a connection object
connection = mysql.connector.connect(
    host=DB_HOST,
    port=DB_PORT,
    user=DB_USERNAME,
    password=DB_PASSWORD,
    database=DB_NAME
)

# Create a cursor object
cursor = connection.cursor()

# Execute the query
query="SELECT * FROM users"
cursor.execute(query)

# Fetch the results
results = cursor.fetchall()

# Close the connection
connection.close()

# Print the results
for row in results:
    print(row)
