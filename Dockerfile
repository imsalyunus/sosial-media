FROM php:8.2-apache

RUN apt-get update && apt-get upgrade -y

RUN docker-php-ext-install mysqli pdo pdo_mysql

COPY . /var/www/html/
