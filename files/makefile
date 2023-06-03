RED=\033[0;31m
GREEN=\033[0;32m
NC=\033[0m



.PHONY: all clean up down

all : up

up:
	@mkdir -p /Users/abellakr/data 
	@mkdir -p /Users/abellakr/data/database 
	@mkdir -p /Users/abellakr/data/wordpress 
	@cd ./srcs/ && docker compose up --build -d
	@echo "\n$(GREEN)------------------- done ! wait 20 s --------------------\n"

down:
	@cd ./srcs/ && docker compose down
	@echo "\n$(RED)------------------- inception containers are down successfully --------------------\n"

harddown: down
	@rm -rf /Users/abellakr/data
	@cd ./srcs/ && docker compose down -v 
	@docker rmi mariadb || true
	@docker rmi wordpress || true
	@docker rmi nginx || true
	@docker rmi redis || true
	@docker rmi ftp || true
	@echo "\n$(RED)------------------- all inception data has been cleaned succefully --------------------\n"

clean: harddown
	@yes | docker system prune -a
	@echo "\n$(RED)------------------- cleaned --------------------\n"


