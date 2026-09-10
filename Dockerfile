FROM php:8.2-apache

# Update paket OS
RUN apt-get update && apt-get upgrade -y && rm -rf /var/lib/apt/lists/*

# Install ekstensi PHP yang dibutuhkan
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy source code
COPY . /var/www/html/

# Set permission
RUN chown -R www-data:www-data /var/www/html
