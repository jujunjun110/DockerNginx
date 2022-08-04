.PHONY: setup shell start stop

PJNAME := docker-nginx

setup:
	docker run --name $(PJNAME) -v ./files:/usr/share/nginx/html:ro -d -p 8180:80 nginx

shell:
	docker compose exec -it $(PJNAME) bash

start:
	docker start $(PJNAME) 

stop:
	docker stop $(PJNAME)

log:
	docker logs $(PJNAME) -f

