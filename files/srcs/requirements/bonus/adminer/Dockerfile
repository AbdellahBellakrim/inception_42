FROM debian:buster

RUN apt update -y && apt install -y php php-mysql && apt install -y wget && wget "http://www.adminer.org/latest.php" -O /var/www/html/index.php

EXPOSE 881

ENTRYPOINT ["php", "-S", "0.0.0.0:881", "-t", "/var/www/html"]