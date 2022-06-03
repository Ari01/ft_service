FROM alpine:3.15

RUN apk update && apk add \
influxdb telegraf

COPY influxdb.sh /home/docker/script/influxdb.sh
COPY telegraf.conf /etc/telegraf.conf

CMD sh /home/docker/script/influxdb.sh
