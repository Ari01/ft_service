# DOCKER CONTAINERS
	eval $(minikube docker-env)
	# NGINX
	docker build srcs/nginx/. -t "nginx"
	# MYSQL
	docker build srcs/mysql/. -t "mysql"
	# WP
	docker build srcs/wordpress/. -t "wordpress"
	# PMA
	docker build srcs/phpmyadmin/. -t "phpmyadmin"
	# INFLUXDB
	docker build srcs/influxdb/. -t "influxdb"
	# TELEGRAF
	#docker build srcs/telegraf/. -t "telegraf"
	# FTPS
	docker build srcs/ftps/. -t "ftps"
	# GRAFANA
	docker build srcs/grafana/. -t "grafana"
	docker images

	kubectl apply -k srcs/config/.
