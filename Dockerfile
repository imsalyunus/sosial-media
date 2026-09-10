FROM php:8.2-apache-slim

RUN docker-php-ext-install mysqli pdo pdo_mysql

COPY . /var/www/html/
