# KUBERNETES
	# DEPENDECIES
	sudo apt-get update
	sudo apt-get install -y apt-transport-https ca-certificates curl

	# GPG KEY
	sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg

	# KUBERNETES DIR
	echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list

	# KUBERNETES INSTALL
	sudo apt-get update
	sudo apt-get install -y kubectl
	
	# START MINIKUBE
	minikube start

# METALLB
	kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.6/manifests/namespace.yaml
	kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.6/manifests/metallb.yaml
	kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
	kubectl get pod -n metallb-system -o wide
	kubectl get configmap kube-proxy -n kube-system -o yaml | \
	sed -e "s/strictARP: false/strictARP: true/"
	kubectl get configmap kube-proxy -n kube-system -o yaml | \
	kubectl apply -f - -n kube-system

# POD NAME
	kubectl get pod | grep "nginx[a-z0-9-]*"
