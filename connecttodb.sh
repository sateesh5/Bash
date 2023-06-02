#!/bin/bash

# Define the database connection information
DB_HOST="localhost"
DB_PORT="3306"
DB_USERNAME="root"
DB_PASSWORD="password"
DB_NAME="mydb"

# Connect to the database
mysql -h "$DB_HOST" -P "$DB_PORT" -u "$DB_USERNAME" -p"$DB_PASSWORD" -D "$DB_NAME"

# Execute the query
query="SELECT * FROM users"
mysql -e "$query"

# Close the connection
mysql -e "quit"
