FROM alpine:latest

# packages
RUN apk update && apk add \
nginx \
wget \
php7 php7-fpm php7-opcache php7-mysqli php7-phar php7-json

# SCRIPT CONF WEBFOLDER
COPY default /etc/nginx/nginx.conf
COPY pma.sh /home/docker/script/pma.sh

# WORDPRESS
RUN cd /usr/share/webapps && \
wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz && \
tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz && \
rm phpMyAdmin-5.0.2-all-languages.tar.gz && \
mv phpMyAdmin-5.0.2-all-languages phpmyadmin

# USER RIGHTS
RUN adduser -D -g 'user42' user42
RUN chmod -R 777 /usr/share/webapps
RUN ln -s /usr/share/webapps/phpmyadmin/ /var/www/localhost/htdocs/phpmyadmin

CMD sh /home/docker/script/pma.sh
WORKDIR /var/www/localhost/htdocs/phpmyadmin
