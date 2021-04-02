FROM alpine:latest

RUN apk update && apk add nginx

COPY www /www
COPY default /etc/nginx/nginx.conf

RUN adduser -D -g 'user42' user42
RUN chown -R user42:user42 \
/var/lib/nginx \
/www

WORKDIR /etc/nginx
