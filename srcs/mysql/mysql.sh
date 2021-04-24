mkdir /run/openrc
touch /run/openrc/softlevel
chown -R mysql /var/lib/mysql
chmod -R 777 /var/lib/mysql

/etc/init.d/mariadb setup
rc-status
/etc/init.d/mariadb start

mysql -u root -puser42 < /home/docker/script/database.sh
#/etc/init.d/mysqld stop 
mysqladmin -u root -puser42 shutdown
exec mysqld --user=root
#exec /usr/bin/mysqld #--user=mysql --console
