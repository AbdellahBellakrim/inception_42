FROM debian:buster

WORKDIR /mariadb

RUN apt-get update -y && apt-get install mariadb-server -y

# EXPOSE PORT

ENTRYPOINT ["bash", "mariadbconfig.sh"]