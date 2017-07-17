#!/bin/sh

apk --no-cache add \
--repository http://dl-cdn.alpinelinux.org/alpine/v3.4/main \
nginx curl mariadb mariadb-client tzdata \
libjpeg-turbo libjpeg-turbo-utils ncurses \
libwebp icu-libs python

apk --no-cache \
add --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing \
pngquant

apk --no-cache \
add --repository http://dl-cdn.alpinelinux.org/alpine/edge/community \
php7 php7-dom php7-ctype php7-curl php7-fpm \
php7-gd php7-intl php7-json php7-mbstring \
php7-mysqlnd php7-opcache php7-pdo php7-pdo_mysql \
php7-phar php7-posix php7-session php7-xml php7-zlib

/etc/init.d/mariadb setup

rc-service nginx start
rc-service mariadb start
rc-service php-fpm7 start
