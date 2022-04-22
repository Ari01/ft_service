FROM alpine:latest

RUN apk update && apk add \
nginx openssl #openrc

COPY srcs/default /etc/nginx/nginx.conf
COPY srcs/nginx.sh /home/docker/script/nginx.sh
COPY srcs/ssl.sh /home/docker/script/ssl.sh

RUN mkdir /etc/nginx/certificate
RUN mkdir /www
RUN adduser -D -g 'user42' user42
RUN chown -R user42:user42 \
/var/lib/nginx \
/www \
/home/docker/script/nginx.sh \
/home/docker/script/ssl.sh

EXPOSE 80 443

CMD sh /home/docker/script/nginx.sh

WORKDIR /etc/nginx
