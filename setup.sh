# INSTALL MINIKUBE
	echo "Install minikube ? y/n"
	read ANSWER
	if [ $ANSWER = "y" ]
	then
		sh install_minikube.sh
	fi

# START MINIKUBE
	minikube delete
	minikube start
	minikube kubectl -- get po -A

# METALLB
	# ENABLE ARP if using kube-proxy in IPVS mode
	#kubectl get configmap kube-proxy -n kube-system -o yaml | \
	#sed -e "s/strictARP: false/strictARP: true/" | \
	#kubectl apply -f - -n kube-system

	# INSTALL
	kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.12.1/manifests/namespace.yaml
	kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.12.1/manifests/metallb.yaml

	# SECRET KEY ON FIRST INSTALL
	#kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
	#kubectl get configmap kube-proxy -n kube-system -o yaml | \
	#sed -e "s/strictARP: false/strictARP: true/"
	#kubectl get pod -n metallb-system -o wide
	#kubectl get configmap kube-proxy -n kube-system -o yaml | \
	#kubectl apply -f - -n kube-system

# KUBERNETES CONF
	sleep 5
	sh build.sh
	kubectl apply -k srcs/config/.
	#kubectl apply -f srcs/config/metallb.yaml
	#kubectl apply -f srcs/config/nginx.yaml
