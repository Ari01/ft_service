FROM alpine:latest

RUN apk update && apk add \
openrc \
mysql \
mysql-client

VOLUME [ "/sys/fs/cgroup" ]
#VOLUME [ "/var/lib/mysql" ]

COPY mysql.sh /home/docker/script/mysql.sh
COPY database.sh /home/docker/script/database.sh

RUN adduser -D -g 'user42' user42
RUN chown -R user42:user42 \
/var/lib/mysql \
/home/docker/script/mysql.sh \
/home/docker/script/database.sh

RUN chmod 777 \
/home/docker/script/mysql.sh \
/home/docker/script/database.sh

CMD /home/docker/script/mysql.sh
WORKDIR /etc/init.d
