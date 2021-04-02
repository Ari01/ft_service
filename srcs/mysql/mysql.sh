mkdir /run/openrc
touch /run/openrc/softlevel

/etc/init.d/mariadb setup
rc-update add mariadb default
rc-status default
rc-service mariadb start

mysql -u root -p
sh
