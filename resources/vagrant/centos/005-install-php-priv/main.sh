#!/usr/bin/env bash

CENTOS_V="$(rpm --eval '%{centos_ver}')"
PHP_V=73

yum -y install \
  https://dl.fedoraproject.org/pub/epel/epel-release-latest-${CENTOS_V}.noarch.rpm \
  https://rpms.remirepo.net/enterprise/remi-release-${CENTOS_V}.rpm

yum makecache fast

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
