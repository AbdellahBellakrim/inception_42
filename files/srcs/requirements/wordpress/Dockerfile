FROM debian:buster

RUN apt-get update -y
RUN apt-get install  -y  php7.3-fpm && apt-get install -y  php-mysql && apt-get install -y sendmail
RUN apt-get install curl -y

COPY ./tool/wpconfig.sh .

ENTRYPOINT ["bash", "wpconfig.sh"]
