FROM alpine:latest

RUN apk update && apk add \
openrc \
mysql \
mysql-client

VOLUME [ "/sys/fs/cgroup" ]

COPY mysql.sh /home/docker/script/mysql.sh
RUN chmod 744 /home/docker/script/mysql.sh

CMD /home/docker/script/mysql.sh
WORKDIR /etc/init.d
