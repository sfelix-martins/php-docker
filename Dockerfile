FROM php:7.4.1-fpm-alpine

RUN apk update
RUN apk add --no-cache openssl bash nodejs npm
RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY .docker/nginx/nginx.conf /etc/nginx/conf.d/

EXPOSE 80
ENTRYPOINT ["php-fpm"]
