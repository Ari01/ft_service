sed -i -e "s/# urls = \[\"http:\/\/127.0.0.1:8086\"\]/urls = \[\"http:\/\/influxdb:8086\"\]/g" /etc/telegraf.conf
telegraf --config /etc/telegraf.conf
