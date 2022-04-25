FROM alpine:latest

RUN apk update && apk add vsftpd openssl

RUN openssl req \
        -x509 \
        -newkey rsa:4096 \
        -sha256 \
        -nodes \
        -keyout /etc/vsftpd/key.pem \
        -out /etc/vsftpd/cert.pem \
        -days 3650 \
        -subj "/CN=FR/ST=Paris/L=Paris/O=42/OU=42/CN=192.168.49.100"

COPY ftps.sh /home/docker/script/ftps.sh
COPY vsftpd.conf /etc/vsftpd/vsftpd.conf 

RUN adduser -D -g 'user42' user42
RUN chown -R user42:user42 /home/docker/script/ftps.sh

CMD sh /home/docker/script/ftps.sh

WORKDIR /etc/vsftpd
