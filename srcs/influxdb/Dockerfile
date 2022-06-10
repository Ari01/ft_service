FROM alpine:3.15

RUN apk update && apk add \
influxdb telegraf openrc

COPY influxdb.sh /home/docker/script/influxdb.sh
COPY telegraf.conf /etc/telegraf.conf
COPY influxdb.conf /etc/influxdb.conf

CMD sh /home/docker/script/influxdb.sh
