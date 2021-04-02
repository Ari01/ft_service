#apt update
echo "apt update"
sudo apt-get update

#installation des paquets permettant à APT d'utiliser un serveur HTTPS de dépôt
echo "installing https server"
sudo apt-get install \
        apt-transport-https \
        ca-certificates \
        curl \
        software-properties-common

#ajout cle GPG de docker
echo "adding docker gpg key"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo "expected key print : 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88"
sudo apt-key fingerprint 0EBFCD88

#pointer vers depot stable de docker CE
echo "pointing to docker CE stable repo"
sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) \
       stable"

#installation Docker CE
echo "installing docker CE"
sudo apt-get update
sudo apt-get install docker-ce

#config
echo "adding user"
sudo usermod -aG docker user42
su user42

#start docker
echo "starting docker"
sudo service docker start

#docker test
echo "hello world test"
sudo docker run hello-world
