FROM php:8.2-cli-alpine

RUN apk update && apk upgrade --no-cache && \
    docker-php-ext-install mysqli pdo pdo_mysql && \
    addgroup -S appgroup && \
    adduser -S appuser -G appgroup

WORKDIR /var/www/html/

COPY auth.php .
COPY config.php .
COPY index.php .
COPY login.php .
COPY logout.php .
COPY register.php .
COPY timeline.php .

COPY css ./css
COPY img ./img
COPY js ./js

RUN chown -R appuser:appgroup /var/www/html

USER appuser

EXPOSE 80

CMD ["php", "-S", "0.0.0.0:80"]
