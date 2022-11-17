FROM php:8.1-apache-buster

# create "php.ini" file from default "php.ini-development"
# change php.ini settings
RUN cp /usr/local/etc/php/php.ini-development /usr/local/etc/php/php.ini && \
    sed -i 's/upload_max_filesize = 2M/upload_max_filesize = 128M/g' /usr/local/etc/php/php.ini && \
    sed -i 's/max_execution_time = 30/max_execution_time = 240/g' /usr/local/etc/php/php.ini

# Install php extensions and creates aditional ini file in conf.d directory example: /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
RUN pecl install xdebug \
	&& docker-php-ext-enable xdebug

RUN docker-php-ext-install pdo_mysql \
	&& docker-php-ext-enable pdo_mysql

# Custom configuration for xdebug extension. Could be placed in newly created php.ini file or in atomaticly denerated ini file in conf.d directory (Name of the file should be investygated by exec to container and la file in conf.d directory)

# edit mysql ini file
RUN sed -i 's/upload_max_filesize = ([0-9]{1,})M/upload_max_filesize = 1284M/g' /usr/local/etc/php/php.ini && \
    sed -i 's/max_execution_time = 240/max_execution_time = 1200/g' /usr/local/etc/php/php.ini && \
	sed -i 's/(post_max_size = ([0-9]{1,})M/post_max_size = 128M/g' /usr/local/etc/php/php.ini

# check in continer:
# docker exec -it lamp-app-8.1-1 /bin/bash
# cd /usr/local/etc/php && cat php.ini | grep post_max

# You can use this form of configuration when adding new settings to a configuration file
RUN echo '[Xdebug]\n\
pdo_mysql.debug = On\n\
xdebug.remote_enable = 1\n\
xdebug.remote_connect_back = On\n\
xdebug.remote_port = "9000"\n\
xdebug.profiler_enable = 0\n\
xdebug.remote_handler = dbgp\n\
xdebug.remote_mode = req\n\
xdebug.var_display_max_depth = 5\n\
xdebug.remote_autostart = true' >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

# Add text on second line pushind original seccound line down to third line.
RUN sed -i '2i\xdebug.show_local_vars = O\' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
RUN sed -i '3i\xdebug.show_error_trace = On\' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini


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