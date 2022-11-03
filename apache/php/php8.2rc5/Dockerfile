FROM php:8.2.0RC5-apache-buster
WORKDIR /usr/local/etc/php/
RUN cd /usr/local/etc/php/
RUN cp php.ini-development php.ini
RUN cp /usr/local/etc/php/php.ini-development /usr/local/etc/php/php.ini
# RUN pecl install xdebug && docker-php-ext-enable xdebug