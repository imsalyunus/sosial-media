FROM php:8.2-apache-bookworm-slim

# Update paket OS agar tidak ada CVE lama
RUN apt-get update && apt-get upgrade -y && rm -rf /var/lib/apt/lists/*

# Install ekstensi PHP yang dibutuhkan
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy source code ke dalam container
COPY . /var/www/html/

EXPOSE 80
