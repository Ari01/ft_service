mkdir -p /run/openrc
touch /run/openrc/softlevel

/etc/init.d/mariadb setup
rc-status
/etc/init.d/mariadb start

mysql -u root -puser42 < /home/docker/script/database.sh
sh
