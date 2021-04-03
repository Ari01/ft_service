FROM alpine:latest

RUN apk update && apk add \
nginx \
openssl

COPY www /www
COPY certificate /etc/nginx/certificate
COPY default /etc/nginx/nginx.conf
COPY nginx.sh /home/docker/script/nginx.sh
COPY ssl.sh /home/docker/script/ssl.sh

RUN adduser -D -g 'user42' user42
RUN chown -R user42:user42 \
/var/lib/nginx \
/www \
/home/docker/script/nginx.sh \
/home/docker/script/ssl.sh

CMD sh /home/docker/script/nginx.sh

WORKDIR /etc/nginx
