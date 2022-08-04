.PHONY: setup shell start stop log

PJ_NAME := docker-nginx2

setup:
	docker run --name $(PJ_NAME) -v $(PWD)/files:/usr/share/nginx/html:ro -d -p 8180:80 nginx
	docker compose exec -it $(PJ_NAME) bash 

shell:
	docker compose exec -it $(PJ_NAME) bash

start:
	docker start $(PJ_NAME) 
	echo http://localhost:8180

stop:
	docker stop $(PJ_NAME)

log:
	docker logs $(PJ_NAME) -f

rm:
	docker stop $(PJ_NAME)
	docker rm $(PJ_NAME)
