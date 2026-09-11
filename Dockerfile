FROM php:8.3-apache-alpine

# Update & upgrade paket OS
RUN apk update && apk upgrade && rm -rf /var/cache/apk/*

# Install ekstensi PHP yang dibutuhkan
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy source code
COPY . /var/www/html/

EXPOSE 80
