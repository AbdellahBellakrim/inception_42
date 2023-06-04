FROM debian:buster

RUN apt-get update -y && apt-get install -y vsftpd

COPY ./tools/ftpconfig.sh .

EXPOSE 21
EXPOSE 20
EXPOSE 40000-40005

ENTRYPOINT ["bash" , "ftpconfig.sh"]