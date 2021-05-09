mkdir /run/openrc
touch /run/openrc/softlevel
chown -R mysql /var/lib/mysql
chmod -R 777 /var/lib/mysql

/etc/init.d/mariadb setup
rc-status
/etc/init.d/mariadb start
mysql -u root -puser42 < /home/docker/script/database.sh
/etc/init.d/mariadb stop
mysqld -u mysql

#sed -i "s|.*bind-address\s*=.*|bind-address=0.0.0.0|g" /etc/my.cnf.d/mariadb-server.cnf
#mysqladmin -u root -puser42 shutdown
#exec /usr/bin/mysqld_safe --datadir='/var/lib/mysql'
#echo "
#y
#y
#user42
#user42
#y
#y
#y
#y
#"" > mysql_secure_installation
#rc-service mariadb restart
#rc-update add mariadb default
#echo "
#" > mysql -u root -p < /home/docker/script/database.sh
#mysql -u root -puser42 < /home/docker/script/database.sh
#mysqladmin -u root -puser42 shutdown
#exec mysqld -u root
