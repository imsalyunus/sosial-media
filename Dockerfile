FROM php:8.2-apache

# Update paket OS agar tidak ada CVE lama
RUN sed -i 's|deb.debian.org|archive.debian.org|g' /etc/apt/sources.list && \
    apt-get update && apt-get upgrade -y && \
    rm -rf /var/lib/apt/lists/*

# Install ekstensi PHP yang dibutuhkan
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy source code ke dalam container
COPY . /var/www/html/

# Expose port Apache
EXPOSE 80
