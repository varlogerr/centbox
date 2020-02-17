#!/usr/bin/env bash

CENTOS_V="$(rpm --eval '%{centos_ver}')"

yum -y install https://repo.ius.io/ius-release-el${CENTOS_V}.rpm \
yum makecache fast
yum -y --enablerepo=ius install httpd mod_ssl
