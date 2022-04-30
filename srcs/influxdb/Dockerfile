FROM alpine:latest

RUN apk update && apk add \
influxdb telegraf

COPY influxdb.sh /home/docker/script/influxdb.sh
COPY telegraf.conf /etc/telegraf.conf

CMD sh /home/docker/script/influxdb.sh
