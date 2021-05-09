FROM alpine:latest

# packages
RUN apk update && apk add \
nginx \
wget \
php7 php7-fpm php7-opcache php7-mysqli php7-phar php7-json

# WORDPRESS
RUN mkdir /www && cd /www && \
wget http://wordpress.org/latest.tar.gz && \
tar -xzvf latest.tar.gz && \
rm latest.tar.gz

# SCRIPT & CONF
COPY default /etc/nginx/nginx.conf
COPY wp.sh /home/docker/script/wp.sh
COPY wp-config.php /www/wordpress/wp-config.php 

# USER RIGHTS
RUN adduser -D -g 'user42' user42
RUN chown -R user42:user42 \
/var/lib/nginx \
/www \
/home/docker/script/wp.sh

CMD sh /home/docker/script/wp.sh
WORKDIR /etc/nginx
