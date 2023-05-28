#!/bin/bash

service mysql start

sleep 1
# # Create database and user and grant privileges
mysql -e "CREATE DATABASE IF NOT EXISTS $data_base_name;"
mysql -e "CREATE USER IF NOT EXISTS '${user}'@'%' IDENTIFIED BY '${user_password}';"
mysql -e "GRANT ALL PRIVILEGES ON ${data_base_name}.* TO '${user}'@'%';"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${user_root_pass}';"

mysqladmin -u root -p$user_root_pass shutdown

exec mysqld_safe