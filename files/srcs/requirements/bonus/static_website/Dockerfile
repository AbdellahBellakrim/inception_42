FROM debian:buster

RUN apt-get update && apt-get install -y nginx

RUN mkdir -p /var/www/html

COPY ./website /var/www/html/mywebsite

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 5400

CMD ["nginx", "-g", "daemon off;"]