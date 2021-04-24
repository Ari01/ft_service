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

# METALLB
	kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.6/manifests/namespace.yaml
	kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.6/manifests/metallb.yaml
	kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
	kubectl get configmap kube-proxy -n kube-system -o yaml | \
	sed -e "s/strictARP: false/strictARP: true/"
	kubectl get pod -n metallb-system -o wide
	#kubectl get configmap kube-proxy -n kube-system -o yaml | \
	#kubectl apply -f - -n kube-system

# KUBERNETES CONF
	sh build.sh
	kubectl apply -k srcs/config/. 
