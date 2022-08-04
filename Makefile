run:
	docker run --name docker-nginx -v ./files:/usr/share/nginx/html:ro -d -p 8180:80 nginx