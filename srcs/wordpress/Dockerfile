FROM alpine:3.15

# packages
RUN apk update && apk add \
curl \
nginx \
wget \
telegraf \
php7 php7-fpm php7-opcache php7-mysqli php7-phar php7-json php-mbstring php-gettext

# WORDPRESS CLI
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

# SCRIPT & CONF
COPY default /etc/nginx/nginx.conf
COPY wp.sh /home/docker/script/wp.sh
COPY wp-config.php /www/wordpress/wp-config.php 
COPY telegraf.conf /etc/telegraf.conf

# USER RIGHTS
RUN adduser -D -g 'user42' user42
RUN chown -R user42:user42 \
/var/lib/nginx \
/www/wordpress \
/home/docker/script/wp.sh

CMD sh /home/docker/script/wp.sh
WORKDIR /www/wordpress
