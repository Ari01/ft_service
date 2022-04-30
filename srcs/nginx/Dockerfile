FROM alpine:latest

RUN apk update
RUN apk add nginx openssl openssh openrc

COPY srcs/default /etc/nginx/nginx.conf
COPY srcs/nginx.sh /home/docker/script/nginx.sh
COPY srcs/ssl.sh /home/docker/script/ssl.sh
COPY srcs/sshd_config /etc/ssh/sshd_config

# SSH CONFIG
RUN ssh-keygen -t dsa -P "" -f /etc/ssh/ssh_host_dsa_key && \
	ssh-keygen -t rsa -P "" -f /etc/ssh/ssh_host_rsa_key && \
	ssh-keygen -t ecdsa -P "" -f /etc/ssh/ssh_host_ecdsa_key && \
	ssh-keygen -t ed25519 -P "" -f /etc/ssh/ssh_host_ed25519_key

# SSL CONFIG
RUN openssl req \
        -x509 \
        -newkey rsa:4096 \
        -sha256 \
        -nodes \
        -keyout /etc/nginx/nginx.key \
        -out /etc/nginx/nginx-certificate.crt \
        -days 3650 \
        -subj "/CN=FR/ST=Paris/L=Paris/O=42/OU=42/CN=192.168.49.100"

# CREATE USER
RUN adduser -D "user42" && echo "user42:user42" | chpasswd

# FOLDERS AND RIGHTS
#RUN mkdir /etc/nginx/certificate
RUN mkdir /www
RUN chown -R user42:user42 \
/var/lib/nginx \
/www \
/home/docker/script/nginx.sh \
/home/docker/script/ssl.sh

EXPOSE 80 443 22

CMD sh /home/docker/script/nginx.sh

WORKDIR /etc/nginx
