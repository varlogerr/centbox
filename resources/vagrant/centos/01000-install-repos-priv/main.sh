#!/usr/bin/env bash

CENTOS_V="$(rpm --eval '%{centos_ver}')"

MARIADB_V=10.4

# install epel, remi and ius repos
yum -y install \
  https://dl.fedoraproject.org/pub/epel/epel-release-latest-${CENTOS_V}.noarch.rpm \
  https://rpms.remirepo.net/enterprise/remi-release-${CENTOS_V}.rpm \
  https://repo.ius.io/ius-release-el${CENTOS_V}.rpm

# install mariadb repo
cat /vagrant/resources/vagrant/centos/resources/mariadb/mariadb.repo \
| sed -e "s#{{ MARIADB_V }}#${MARIADB_V}#" \
| sed -e "s#{{ CENTOS_V }}#${CENTOS_V}#" \
| tee /etc/yum.repos.d/mariadb.repo

# install docker repo
yum-config-manager \
  --add-repo https://download.docker.com/linux/centos/docker-ce.repo

yum makecache fast
