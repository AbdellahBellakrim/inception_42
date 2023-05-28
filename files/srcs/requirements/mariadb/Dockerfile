FROM debian:buster

RUN apt-get update -y && apt-get install mariadb-server -y

COPY ./tool/mariadbconfig.sh .

RUN sed -i 's/bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

ENTRYPOINT ["bash", "mariadbconfig.sh"]