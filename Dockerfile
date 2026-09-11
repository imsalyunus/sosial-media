FROM php:8.3-alpine

# Update & install Apache + ekstensi PHP
RUN apk update && apk upgrade --no-cache && \
    apk add --no-cache apache2 apache2-utils && \
    docker-php-ext-install mysqli pdo pdo_mysql

RUN docker-php-ext-install mysqli pdo pdo_mysql

COPY . /var/www/html/

# Konfigurasi Apache supaya jalan di foreground
CMD ["httpd", "-D", "FOREGROUND"]

EXPOSE 80
