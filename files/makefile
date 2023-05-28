.PHONY: all clean up down

all : up

up:
	cd ./srcs/ && docker compose up --build

down:
	cd ./srcs/ && docker compose down

harddown:
	cd ./srcs/ && docker compose down -v 

clean: harddown
	docker rmi mariadb
	docker system prune -a

