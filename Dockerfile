FROM php:8.2-cli-alpine

// RUN apk update && apk upgrade --no-cache 
RUN    && docker-php-ext-install mysqli pdo pdo_mysql

COPY . /var/www/html/

WORKDIR /var/www/html

EXPOSE 80

CMD ["php", "-S", "0.0.0.0:80"]
