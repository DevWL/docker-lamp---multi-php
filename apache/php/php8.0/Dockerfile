FROM php:8.0-apache-buster

RUN pecl install redis-5.1.1 \
	&& pecl install xdebug \
	&& docker-php-ext-enable redis xdebug

RUN apt-get install pdo_mysql && docker-php-ext-install pdo_mysql && docker-php-ext-enable pdo_mysql

# ENV APACHE_DOCUMENT_ROOT /var/www/htmls
# RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
# RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

RUN service apache2 restart

# COPY /usr/local/etc/php/conf.d/ 