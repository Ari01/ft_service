# DL SERVICES in /var/www/html
# WP
wget http://wordpress.org/latest.tar.gz
tar xfvz latest.tar.gz
rm latest.tar.gz

# PMA
mkdir phpmyadmin
cd phpmyadmin
wget https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.tar.gz
tar xfvz phpMyAdmin-latest-all-languages.tar.gz
rm phpMyAdmin-latest-all-languages.tar.gz

# NGINX CONFIG : rm default site enabled, update and link mysite config
rm -rf /etc/nginx/sites-enabled/default
IP=$(ip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//')
sed -i -e "s/server_name _/server_name $IP/g" /etc/nginx/sites-available/mysite
ln -s /etc/nginx/sites-available/mysite /etc/nginx/sites-enabled/mysite

DIRECTORY=$(ls)
mv $DIRECTORY/* .
rm -rf $DIRECTORY

# PERMISSIONS ON WP and PMA folders
chown -R www-data /var/www/html/wordpress
chmod -R 755 /var/www/html/wordpress
chown -R www-data /var/www/html/phpmyadmin
chmod -R 755 /var/www/html/phpmyadmin

# turn auto_index
if [ -n "$auto_index" ]
then
	if [ $auto_index = "OFF" ]
	then
		sed -i -e 's/autoindex on/autoindex off/g' /etc/nginx/sites-available/mysite
		echo "autoindex off"
	fi
fi

# START SERVICES
service php7.3-fpm start
service mysql start

# CREATE DB
mysql -u root -puser42 < /var/www/html/phpmyadmin/sql/create_tables.sql
mysql -u root -puser42 < /home/docker/script/database.sh

# GENERATE SSL certificate
cd /etc/nginx
mkdir certificate
cd certificate
echo $IP
openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out nginx-certificate.crt -keyout nginx.key

# START NGINX
service nginx start

/bin/bash
