FROM php:8.2-fpm-alpine

RUN apk update && apk upgrade --no-cache

RUN docker-php-ext-install mysqli pdo pdo_mysql

COPY . /var/www/html/

EXPOSE 80
