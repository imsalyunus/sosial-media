FROM php:apache

RUN apt-get update && apt-get upgrade -y && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install mysqli pdo pdo_mysql

COPY . /var/www/html/

EXPOSE 80
