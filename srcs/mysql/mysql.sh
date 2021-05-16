mkdir /run/openrc
touch /run/openrc/softlevel

/etc/init.d/mariadb setup
rc-status
/etc/init.d/mariadb start
mysql -u root -puser42 < /home/docker/script/database.sh
#sed -i "s|.*bind-address\s*=.*|bind-address=0.0.0.0|g" /etc/my.cnf.d/mariadb-server.cnf
/etc/init.d/mariadb stop

exec /usr/bin/mysqld --user=mysql --console
