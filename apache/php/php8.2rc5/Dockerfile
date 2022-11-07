FROM php:8.2.0RC5-apache-buster

RUN pecl install xdebug \
	&& docker-php-ext-enable xdebug

RUN docker-php-ext-install pdo_mysql && docker-php-ext-enable pdo_mysql

# ENV APACHE_DOCUMENT_ROOT /var/www/html
# RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
# RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

# WORKDIR /usr/local/etc/php/
# RUN cd /usr/local/etc/php/
# RUN cp php.ini-development php.ini
# WORKDIR /usr/local/etc/php/
# RUN cp /usr/local/etc/php/php.ini-development /usr/local/etc/php/php.ini
# RUN pecl install xdebug && docker-php-ext-enable xdebug