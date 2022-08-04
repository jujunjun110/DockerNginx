run:
	docker  run --name docker-nginx -v ./files:/usr/share/nginx/html:ro -d -p 8180:80 nginx

shell:
	docker compose exec -it docker-nginx bash

start:
	docker start b23e1571e801 

stop:
	docker stop b23e1571e801

