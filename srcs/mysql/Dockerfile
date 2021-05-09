FROM alpine:latest

RUN apk update && apk add \
openrc \
php7 php7-fpm php7-opcache php7-mysqli php7-phar php7-json \
mysql \
mysql-client

VOLUME [ "/sys/fs/cgroup" ]
#VOLUME [ "/var/lib/mysql" ]

COPY mysql.sh /home/docker/script/mysql.sh
COPY database.sh /home/docker/script/database.sh

RUN chmod 777 \
/var/lib/mysql \
/home/docker/script/mysql.sh \
/home/docker/script/database.sh

CMD /home/docker/script/mysql.sh
WORKDIR /etc/init.d
