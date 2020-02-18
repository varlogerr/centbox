#!/usr/bin/env bash

image=mariadb:10.4
container=mariadb104
root_password=vagrant
host_port=33061

[[ "$(
  docker container ls \
  --filter name="^${container}$" | wc -l
  )" -gt 1 ]] && exit 0

docker volume create "${container}"

docker pull -q "${image}"

docker container run \
  -d --name "${container}" \
  -v "${container}":/var/lib/mysql \
  --restart always \
  -v /vagrant/resources/vagrant/centos/resources/mariadb/confd:/etc/mysql/conf.d \
  -v /vagrant/resources/vagrant/centos/resources/mariadb/initdb:/docker-entrypoint-initdb.d \
  -e MYSQL_ROOT_PASSWORD="${root_password}" \
  -p ${host_port}:3306 "${image}"
