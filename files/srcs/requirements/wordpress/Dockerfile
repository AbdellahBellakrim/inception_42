FROM debian:buster

RUN apt-get update -y
RUN apt-get install  -y  php7.3-fpm
RUN apt-get install -y php php-curl php-mysql
RUN apt-get install -y sendmail
RUN apt-get install curl -y

COPY ./tool/wpconfig.sh .

ENTRYPOINT ["bash", "wpconfig.sh"]
