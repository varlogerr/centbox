#!/usr/bin/env bash

# required packages
yum install -y \
  yum-utils \
  device-mapper-persistent-data \
  lvm2

# set up repo
yum-config-manager \
  --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# install docker
yum install -y \
  docker-ce \
  docker-ce-cli \
  containerd.io

# start docker service
systemctl start docker
systemctl enable docker

# add vagrant user to docker group
usermod -aG docker vagrant

# install completion
curl \
  https://raw.githubusercontent.com/docker/docker-ce/master/components/cli/contrib/completion/bash/docker \
  -o /etc/bash_completion.d/docker.sh
