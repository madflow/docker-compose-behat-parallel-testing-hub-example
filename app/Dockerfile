FROM php:5.6-apache

RUN requirements="parallel zlib1g-dev libicu-dev git curl libmcrypt-dev" \
    && apt-get update && apt-get install -y $requirements && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install mcrypt \
    && docker-php-ext-install mbstring \
    && docker-php-ext-install zip \
    && apt-get purge --auto-remove -y

RUN a2enmod rewrite

ADD config/vhost.conf /etc/apache2/sites-enabled/default.conf
ADD config/php.ini /usr/local/etc/php/php.ini

# Install composer
RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/bin/composer

WORKDIR /app

RUN chown www-data /app
