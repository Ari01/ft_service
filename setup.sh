# ON FIRST INSTALL
	# if cant exec sudo
	sudo rm -rf /var/lib/dpkg/lock-frontend
	sudo rm -rf /var/lib/apt/lists/lock
	sudo rm -rf /var/cache/apt/archives/lock
	sudo rm -rf /var/lib/dpkg/lock

	# check if firefox is up to date
	sudo apt-get update
	sudo apt-get install firefox

	# make sure user has rights on docker
	sudo chmod 666 /var/run/docker.sock

# INSTALL MINIKUBE
	echo "Install minikube ? y/n"
	read ANSWER
	if [ $ANSWER = "y" ]
	then
		sh srcs/scripts/install_minikube.sh
	fi

# START MINIKUBE
	minikube delete
	minikube start --vm-driver=docker
	minikube kubectl -- get po -A

# METALLB
	# ENABLE ARP if using kube-proxy in IPVS mode
	#kubectl get configmap kube-proxy -n kube-system -o yaml | \
	#sed -e "s/strictARP: false/strictARP: true/" | \
	#kubectl apply -f - -n kube-system

	# INSTALL
	kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.12.1/manifests/namespace.yaml
	kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.12.1/manifests/metallb.yaml

	# SECRET KEY ON FIRST INSTALL (deprecated ?)
	#kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
	#kubectl get configmap kube-proxy -n kube-system -o yaml | \
	#sed -e "s/strictARP: false/strictARP: true/"
	#kubectl get pod -n metallb-system -o wide
	#kubectl get configmap kube-proxy -n kube-system -o yaml | \
	#kubectl apply -f - -n kube-system

# KUBERNETES CONF
	sh srcs/scripts/build.sh
	sh srcs/scripts/run_services.sh
