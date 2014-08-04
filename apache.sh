#!/usr/bin/env bash
# Install Apache
sudo apt-get install -y apache2 php5 libapache2-mod-php5

# Configuring Apache
sudo a2enmod rewrite
echo 'directorio ->>>>'
pwd
sudo cp /vagrant/provisionerds/apache2.conf /etc/apache2/sites-available/000-default.conf
sed -i 's/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf

# PHP Config
sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php5/apache2/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php5/apache2/php.ini

# Removed X-Powered-By: PHP bla bla
sed -i "s/expose_php = .*/expose_php= off/" /etc/php5/apache2/php.ini

# Make Laravel tinker works
# sed -i "s/disable_functions = .*/disable_functions = /" /etc/php5/cli/php.ini

sudo service apache2 restart
