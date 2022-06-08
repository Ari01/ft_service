FROM alpine:3.15

RUN apk update && apk add grafana telegraf

COPY datasources.yaml /usr/share/grafana/conf/provisioning/datasources
COPY telegraf.conf /etc/telegraf.conf
COPY grafana.sh /home/docker/script/grafana.sh
COPY dashboards /usr/share/grafana/conf/provisioning/dashboards

RUN adduser -D -g 'user42' user42
RUN chown -R user42:user42 \
/home/docker/script

CMD sh /home/docker/script/grafana.sh
WORKDIR /usr/share/grafana
