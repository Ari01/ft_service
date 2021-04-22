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
