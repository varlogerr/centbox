#!/usr/bin/env bash

MARIADB_V=10.4
CENTOS_V="$(rpm --eval '%{centos_ver}')"

cat /vagrant/resources/vagrant/centos/006-install-mysql-client-priv/resources/mariadb.repo \
| sed -e "s#{{ MARIADB_V }}#${MARIADB_V}#" \
| sed -e "s#{{ CENTOS_V }}#${CENTOS_V}#" \
| tee /etc/yum.repos.d/mariadb.repo

yum makecache fast
yum -y --enablerepo=mariadb install MariaDB-client
