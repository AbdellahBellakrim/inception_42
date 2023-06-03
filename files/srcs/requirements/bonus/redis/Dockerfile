FROM debian:buster

RUN apt-get update -y && apt-get install -y redis-server && apt-get install -y php-redis 

RUN chmod +w /etc/redis/redis.conf

RUN echo "maxmemory 256mb">> /etc/redis/redis.conf && echo "maxmemory-policy allkeys-lfu" >> /etc/redis/redis.conf

EXPOSE 6379

CMD ["redis-server", "--protected-mode", "no"]