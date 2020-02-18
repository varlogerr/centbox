#!/usr/bin/env bash

PHP_V=73

yum -y --enablerepo="remi-php${PHP_V}" install \
  php \
  mod_php \
  php-mysqlnd \
  php-cli \
  php-gd \
  php-intl \
  php-mbstring \
  php-pdo \
  php-xml \
  php-pecl-zip
