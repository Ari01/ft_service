FROM alpine:latest

# packages
RUN apk update && apk add \
nginx \
wget \
php-fpm php-mysqli

# SCRIPT CONF WEBFOLDER
COPY www /www
COPY default /etc/nginx/nginx.conf
COPY wp.sh /home/docker/script/wp.sh

# WORDPRESS
RUN cd /www && \
wget http://wordpress.org/latest.tar.gz && \
tar -xzvf latest.tar.gz && \
rm latest.tar.gz

# USER RIGHTS
RUN adduser -D -g 'user42' user42
RUN chown -R user42:user42 \
/var/lib/nginx \
/www \
/home/docker/script/wp.sh

CMD sh /home/docker/script/wp.sh
WORKDIR /etc/nginx
