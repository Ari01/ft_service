eval $(minikube docker-env)
	sleep 1

	docker build srcs/wordpress/. -t "wordpress"
#	docker build srcs/nginx/. -t "nginx"
	# PMA
#	docker build srcs/phpmyadmin/. -t "phpmyadmin"
#	# INFLUXDB
#	docker build srcs/influxdb/. -t "influxdb"
#	# TELEGRAF
#	#docker build srcs/telegraf/. -t "telegraf"
#	# FTPS
#	docker build srcs/ftps/. -t "ftps"
#	# GRAFANA
#	docker build srcs/grafana/. -t "grafana"
#	docker images
