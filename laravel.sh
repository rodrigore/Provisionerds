#!/usr/bin/env bash

# Laravel Installer"
wget http://laravel.com/laravel.phar --progress=bar | php
chmod 755 laravel.phar
sudo mv laravel.phar /usr/local/bin/laravel

# Create Laravel 4 app"
cd /vagrant
laravel new l4
