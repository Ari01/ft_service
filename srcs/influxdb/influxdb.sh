openrc
touch /run/openrc/softlevel

service influxdb start

sleep 2

influx < "create datasbase telegraf"

service influxdb stop

telegraf --config /etc/telegraf.conf &
influxd -config /etc/influxdb.conf
