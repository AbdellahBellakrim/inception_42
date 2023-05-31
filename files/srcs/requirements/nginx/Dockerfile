FROM debian:buster

RUN apt update -y && apt upgrade -y

RUN apt-get install -y nginx && apt-get install -y openssl

COPY ./tools/sslcertificate.sh .

RUN bash sslcertificate.sh

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]