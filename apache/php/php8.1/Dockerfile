FROM php:8.1-apache-buster

RUN pecl install xdebug \
	&& docker-php-ext-enable xdebug

RUN docker-php-ext-install pdo_mysql && docker-php-ext-enable pdo_mysql

# WORKDIR /usr/local/etc/php/
# RUN cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini
# RUN sed -ri -e 's!;extension=pdo_mysql!extension=pdo_mysql!g' /usr/local/etc/php/php.ini
# RUN /etc/init.d/apache2 reload


# Extension dir: ls /usr/local/lib/php/extensions/no-debug-non-zts-20210902
# "";extension=pdo_mysql" change to "extension=pdo_mysql"

# php -m | grep pdo
# cd 
# cat php.ini | grep pdo
# sed -ri -e 's!;extension=pdo_mysql!extension=pdo_mysql!g' /usr/local/etc/php/php.ini
# /etc/init.d/apache2 reload

# ENV APACHE_DOCUMENT_ROOT /var/www/htmls
# RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
# RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

# RUN service apache2 restart