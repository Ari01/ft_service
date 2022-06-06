	# run services
	#kubectl apply -k srcs/config/.
	kubectl apply -f srcs/config/metallb.yaml
	kubectl apply -f srcs/config/secret.yaml
	kubectl apply -f srcs/config/influxdb.yaml
	kubectl apply -f srcs/config/mysql.yaml
	kubectl apply -f srcs/config/nginx.yaml
	kubectl apply -f srcs/config/ftps.yaml
	kubectl apply -f srcs/config/wordpress.yaml
	kubectl apply -f srcs/config/phpmyadmin.yaml
	kubectl apply -f srcs/config/grafana.yaml

	# run dashboard
#	kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/master/aio/deploy/recommended.yaml
#	kubectl apply -f srcs/config/dashboard-serviceAccount.yaml
#	kubectl apply -f srcs/config/dashboard-clusterRoleBinding.yaml
#	sleep 2
#	echo "token generated : "
#	kubectl -n kubernetes-dashboard get secret $(kubectl -n kubernetes-dashboard get sa/admin-user -o jsonpath="{.secrets[0].name}") -o go-template="{{.data.token | base64decode}}"
#	echo "\ndashboard is available at : http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/"
#	kubectl proxy
