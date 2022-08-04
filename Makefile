.PHONY: setup shell start stop

setup:
	docker run --name docker-nginx -v ./files:/usr/share/nginx/html:ro -d -p 8180:80 nginx

shell:
	docker compose exec -it docker-nginx bash

start:
	docker start docker-nginx

stop:
	docker stop docker-nginx
