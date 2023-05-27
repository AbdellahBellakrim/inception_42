FROM debian:buster

RUN apt update -y && apt upgrade -y

RUN apt install -y nginx

COPY ./index.html /usr/share/nginx/html/index.html
COPY ./conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]