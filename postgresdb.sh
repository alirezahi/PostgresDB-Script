#!/bin/bash
read -p 'Postgres User: ' db_user_username
read -sp 'User password: ' db_user_password
read -p 'Databse Name: ' db_name

sudo -u postgres psql -c "CREATE DATABASE $db_name;"
sudo -u postgres psql -c "CREATE USER $db_user_username WITH PASSWORD '$db_user_password';"
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE $db_name TO $db_user_username;"
