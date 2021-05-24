FROM alpine:latest

RUN apk update && apk add \
influxdb

COPY influxdb.sh /home/docker/script/influxdb.sh

CMD sh /home/docker/script/influxdb.sh
