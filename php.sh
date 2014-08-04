#!/usr/bin/env bash

echo 'Add repo for latest PHP'
sudo add-apt-repository -y ppa:ondrej/php5

echo 'Update'
sudo apt-get update

echo 'Install PHP'
sudo apt-get install -y php5-cli php5-mysql php5-pgsql php5-sqlite php5-curl php5-gd php5-mcrypt
