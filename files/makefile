.PHONY: all clean up down

all : up

up:
	cd ./srcs/ && docker compose up --build #-d

down:
	cd ./srcs/ && docker compose down

harddown:
	cd ./srcs/ && docker compose down -v 

clean: harddown
	# docker rmi mariadb
	# docker rmi wordpress
	# docker rmi nginx
	docker system prune -a
