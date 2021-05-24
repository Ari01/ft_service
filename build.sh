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
	# GRAFANA
	#docker build srcs/grafana/. -t "grafana"
