FROM php:7.3-fpm-alpine

RUN set -ex && \
    # packages
    apk add --update --no-cache \
    libpq \
    libzip \
    libxml2 \
    libpng \
    libjpeg-turbo && \
    # build deps
    apk add --update --no-cache --virtual \
    .build-deps \
    postgresql-dev \
    libzip-dev \
    libxml2-dev \
    libpng-dev \
    libjpeg-turbo-dev && \
    # php ext
    docker-php-ext-install -j$(nproc) \
    zip \
    gd \
    xml \
    simplexml \
    soap \
    tokenizer \
    pdo \
    pdo_pgsql \
    pdo_mysql \
    pgsql \
    mysqli \
    mbstring \
    bcmath && \
    # configuring php
    cp ${PHP_INI_DIR}/php.ini-production ${PHP_INI_DIR}/php.ini && \
    sed -i "/post_max_size = .*/c\post_max_size = 100M" ${PHP_INI_DIR}/php.ini && \
    sed -i "/upload_max_filesize = .*/c\upload_max_filesize = 100M" ${PHP_INI_DIR}/php.ini && \
    sed -i "/memory_limit = .*/c\memory_limit = 256M" ${PHP_INI_DIR}/php.ini && \
    # composer
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    # clean
    apk del --no-cache --no-network .build-deps

CMD ["php-fpm"]

EXPOSE 9000