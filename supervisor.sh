sudo apt-get install supervisor -y

# Configuracion cola laravel
vi /etc/supervisor/conf.d/queue.conf

[program:queue]
command=php artisan queue:listen --tries=2
directory=/var/www/ens/
stdout_logfile=/var/www/ens/app/storage/logs/supervisor.log
redirect_stderr=true
autostart=true
autorestart=true

sudo supervisorctl reread
sudo supervisorctl add queue
sudo supervisorctl start queue
