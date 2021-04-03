# DOCKER CONTAINERS
	# NGINX
	docker build srcs/nginx/. -t "nginx"
	docker run -itdp 8080:80 --name="nginx" --network "ft_service" --network-alias "nginx" nginx:latest

	# MYSQL
	docker build srcs/mysql/. -t "mysql"
	docker run -itd --network "ft_service" --network-alias "mysql" -v mysql-data:/var/lib/mysql --name="mysql" mysql:latest

	# WP
	docker build srcs/wordpress/. -t "wordpress"
	docker run -itdp 5050:5050 --name="wordpress" --network "ft_service" --network-alias "wordpress" wordpress:latest nginx
