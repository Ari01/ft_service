# DOCKER CONTAINERS
	docker build srcs/nginx/. -t "nginx"
	docker run -itdp 8080:80 --name="nginx" nginx:latest
	docker build srcs/mysql/. -t "mysql"
	docker run -itd --network "ft_service" --network-alias "mysql" -v mysql-data:/var/lib/mysql --name="mysql" mysql:latest
