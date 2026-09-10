FROM php:8.2-fpm-alpine

RUN docker-php-ext-install mysqli pdo pdo_mysql

RUN apk update && apk upgrade openssl libcrypto3 libssl3

COPY . /var/www/html/
RUN chown -R www-data:www-data /var/www/html
