FROM alpine:latest

RUN apk update && apk add telegraf

COPY telegraf.sh /home/docker/script/telegraf.sh

CMD sh /home/docker/script/telegraf.sh
