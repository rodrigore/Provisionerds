#!/usr/bin/env bash

# Configuring MySQL - Root password
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password 123'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password 123'

# Installing MySQL
sudo apt-get install -y mysql-server -qq

# Create database ens
mysql -uroot -p123 -e "CREATE DATABASE ens;"
