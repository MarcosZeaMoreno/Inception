#!/bin/bash
cd /var/www/html
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
./wp-cli.phar core download --allow-root
./wp-cli.phar config create --dbname=$WP_DATABASE_NAME --dbuser=$WP_DATABASE_USER --dbpass=$WP_DATABASE_PASSWORD --dbhost=$MYSQL_HOST --allow-root
./wp-cli.phar core install --url=localhost --title=$WP_TITLE --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_EMAIL --allow-root
./wp-cli.phar user create $WP_USR $WP_EMAIL --user_pass=$WP_PWD --role=subscriber --allow-root

php-fpm8.2 -F