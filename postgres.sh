#!/usr/bin/env bash

# add postgres repository
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" >> /etc/apt/sources.list.d/postgresql.list'
sudo apt-get update

# Installing Postgresql 9.3"
sudo apt-get install -y postgresql-9.3 postgresql-contrib-9.3 -qq

# Configuring Postgres
sudo sed -i "s/#listen_addresses = 'localhost'/listen_addresses = '*'/g" /etc/postgresql/9.3/main/postgresql.conf
echo "host    all             all             0.0.0.0/0               md5" | sudo tee -a /etc/postgresql/9.3/main/pg_hba.conf
sudo service postgresql start

# change password to postgres user
sudo -u postgres psql -c "ALTER USER postgres with password '123'"

# create bd ens
sudo -u postgres /usr/bin/createdb ens;
sudo service postgresql restart
