IP=$(ip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//')
sed -i -e "s/server_name _/server_name $IP/g" /etc/nginx/nginx.conf
echo $IP
nginx
sh
