eval $(minikube docker-env)
sleep 7

# INFLUX
docker build srcs/influxdb/. -t "influxdb"
# MYSQL
docker build srcs/mysql/. -t "mysql"
# NGINX
docker build srcs/nginx/. -t "nginx"
# WP
docker build srcs/wordpress/. -t "wordpress"
# PMA
docker build srcs/phpmyadmin/. -t "phpmyadmin"
# FTPS
docker build srcs/ftps/. -t "ftps"
# GRAFANA
docker build srcs/grafana/. -t "grafana"
#docker images
