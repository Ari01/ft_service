FROM alpine:latest

RUN apk update && apk add \
nginx \
openssl

COPY srcs/www /www
COPY srcs/certificate /etc/nginx/certificate
COPY srcs/default /etc/nginx/nginx.conf
COPY srcs/nginx.sh /home/docker/script/nginx.sh
COPY srcs/ssl.sh /home/docker/script/ssl.sh

RUN adduser -D -g 'user42' user42
RUN chown -R user42:user42 \
/var/lib/nginx \
/www \
/home/docker/script/nginx.sh \
/home/docker/script/ssl.sh

CMD sh /home/docker/script/nginx.sh

WORKDIR /etc/nginx
