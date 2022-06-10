eval $(minikube docker-env)
sleep 1

docker build srcs/mysql/. -t "mysql"
kubectl delete -f srcs/config/mysql.yaml
kubectl apply -f srcs/config/mysql.yaml
