# Menggunakan image dasar PHP dengan Apache
FROM php:7.1-apache

# Memasang ekstensi PHP yang diperlukan untuk mendukung MySQL
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Menyalin semua file dari direktori kerja lokal ke direktori /var/www/html di dalam kontainer
COPY . /var/www/html