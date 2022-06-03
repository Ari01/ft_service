	# run services
	kubectl apply -k srcs/config/.
#	kubectl apply -f srcs/kustomization.yaml
#	kubectl apply -f srcs/metallb.yaml
#	kubectl apply -f srcs/nginx.yaml
#	kubectl apply -f srcs/mysql.yaml
#	kubectl apply -f srcs/influxdb.yaml
#	kubectl apply -f srcs/ftps.yaml
#	kubectl apply -f srcs/grafana.yaml
#	kubectl apply -f srcs/phpmyadmin.yaml
#	kubectl apply -f srcs/wordpress.yaml
	

	# run dashboard
#	kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/master/aio/deploy/recommended.yaml
#	kubectl apply -f srcs/config/dashboard-serviceAccount.yaml
#	kubectl apply -f srcs/config/dashboard-clusterRoleBinding.yaml
#	sleep 2
#	echo "token generated : "
#	kubectl -n kubernetes-dashboard get secret $(kubectl -n kubernetes-dashboard get sa/admin-user -o jsonpath="{.secrets[0].name}") -o go-template="{{.data.token | base64decode}}"
#	echo "\ndashboard is available at : http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/"
#	kubectl proxy
