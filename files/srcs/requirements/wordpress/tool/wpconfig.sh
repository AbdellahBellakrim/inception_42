#!/bin/bash

mkdir -p /run/php
sed -i 's/^listen = \/run\/php\/php7.3-fpm.sock/listen = wordpress:9000/' /etc/php/7.3/fpm/pool.d/www.conf

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp-cli

wp-cli core download --allow-root --path=/var/www/html

cd /var/www/html

mv wp-config-sample.php wp-config.php

wp-cli  config set --add DB_NAME $WORDPRESS_DB_NAME --allow-root
wp-cli  config set --add DB_USER $WORDPRESS_DB_USER --allow-root
wp-cli  config set --add DB_PASSWORD $WORDPRESS_DB_PASSWORD --allow-root
wp-cli  config set --add DB_HOST $WORDPRESS_DB_HOST --allow-root

wp-cli core install --url=$DOMAIN_NAME --title=$TITLE --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASS --admin_email=$ADMIN_EMAIL --allow-root

wp-cli user create $WORDPRESS_USER $WORDPRESS_USER_EMAIL --role=author --user_pass=$WORDPRESS_USER_PASSWORD --allow-root


exec /usr/sbin/php-fpm7.3 -F
