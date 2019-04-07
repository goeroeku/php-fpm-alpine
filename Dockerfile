FROM php:7.3.1-fpm-alpine3.9

LABEL maintainer="goeroeku@gmail.com"

# Installing Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Pre run
RUN docker-php-source extract \
  # Install compile library
  && apk --update add --virtual .build-deps autoconf g++ make pcre-dev icu-dev openssl-dev \
  # Install git, openssh
  && apk add git openssh \
  # Install extension
  && docker-php-ext-install mysqli pdo_mysql \
  # Post run
  && docker-php-source delete \
  && apk del --purge .build-deps \
  && rm -rf /tmp/pear \
  && rm -rf /var/cache/apk/*

EXPOSE 9000