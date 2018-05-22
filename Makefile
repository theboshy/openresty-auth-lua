build-run:
	#server node
	docker build -t backend ./node-server/
	docker run -p 5000:80 -d backend
	#open-resty-nginx-serv
	docker build -t open_resty_serv .
	docker run -p 8080:80 -d open_resty_serv
