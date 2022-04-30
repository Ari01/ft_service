FROM alpine:latest

# packages
RUN apk update && apk add \
nginx \
wget \
telegraf \
php7-fpm php7-common php7-opcache php7-phar php7-session php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom

# PMA DL & FOLDER LINK
RUN mkdir /www && cd /www && \
wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz && \
tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz && \
rm phpMyAdmin-5.0.2-all-languages.tar.gz && \
mv phpMyAdmin-5.0.2-all-languages phpmyadmin
#RUN ln -s /usr/share/webapps/phpmyadmin/ /var/www/localhost/htdocs/phpmyadmin

# CONFS & SCRIPT
COPY default /etc/nginx/nginx.conf
COPY config.inc.php /www/phpmyadmin/config.inc.php
COPY pma.sh /home/docker/script/pma.sh
COPY telegraf.conf /etc/telegraf.conf

# USER RIGHTS
RUN adduser -D -g 'user42' user42
RUN chown -R user42:user42 \
/var/lib/nginx \
/www \
/home/docker/script/pma.sh
 
CMD sh /home/docker/script/pma.sh
WORKDIR /var/www/localhost/htdocs/phpmyadmin
