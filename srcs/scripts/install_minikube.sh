# KUBERNETES
	#KUBECTL
	curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
	chmod +x ./kubectl
	sudo mv ./kubectl /usr/local/bin/kubectl

	#DEPENDENCIES
#	sudo apt-get update
#	sudo apt-get install -y apt-transport-https ca-certificates curl
#
#	# GPG KEY
#	sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
#
#	# KUBERNETES DIR
#	echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
#	
#	# KUBERNETES INSTALL
#	sudo apt-get update
#	sudo apt-get install -y kubectl

	# MINIKUBE INSTALL
	curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
	sudo install minikube-linux-amd64 /usr/local/bin/minikube
