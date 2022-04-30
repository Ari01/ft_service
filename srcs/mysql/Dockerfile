FROM alpine:latest

# packages
RUN apk update && apk add \
openrc \
mysql mysql-client telegraf

VOLUME [ /sys/fs/cgroup/ ]

# script
COPY mysql.sh /home/docker/script/mysql.sh
COPY database.sh /home/docker/script/database.sh
COPY mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf
COPY telegraf.conf /etc/telegraf.conf

# rights
RUN chown -R mysql:mysql /var/lib/mysql
RUN chmod 777 \
/var/lib/mysql \
/home/docker/script

CMD sh /home/docker/script/mysql.sh
