php-fpm7
cd /www/wordpress/
wp core download
#wp core config --dbname=wp --dbuser=root --dbpass=user42 --dbhost=mysql --dbprefix=wp_
wp core install --url="http://172.17.0.20:5050" --title="test" --admin_user="admin" --admin_password="admin" --admin_email="admin@test.fr"
wp user create author author@test.fr --role=author --path=/www/wordpress/
wp user create author2 author2@test.fr --role=author --path=/www/wordpress/
nginx -g "daemon off;"
