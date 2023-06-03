FROM debian:buster

RUN apt-get update -y && apt-get install -y vsftpd

COPY ./tools/ftpconfig.sh .

ENTRYPOINT ["bash" , "ftpconfig.sh"]