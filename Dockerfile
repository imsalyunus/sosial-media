FROM php:8.3-apache-bullseye

# Fix expired repo issue (Bullseye kadang repo security expired)
RUN apt-get update --allow-releaseinfo-change && \
    apt-get dist-upgrade -y && \
    rm -rf /var/lib/apt/lists/*

# Install ekstensi PHP yang dibutuhkan
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy source code ke dalam container
COPY . /var/www/html/

# Expose port Apache
EXPOSE 80
