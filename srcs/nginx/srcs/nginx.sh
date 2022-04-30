# SSL
#cd /etc/nginx/certificate
#openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out nginx-certificate.crt -keyout nginx.key < /home/docker/script/ssl.sh

# init
openrc
touch /run/openrc/softlevel

# IP CONFIG
#IP=$(ip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//')
#sed -i -e "s/server_name _/server_name $IP/g" /etc/nginx/nginx.conf
#echo $IP
#/etc/init.d/sshd
service sshd start
telegraf --config /etc/telegraf.conf &
nginx -g "daemon off;"
