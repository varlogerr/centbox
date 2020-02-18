#!/usr/bin/env bash

# required packages
yum install -y \
  device-mapper-persistent-data \
  lvm2

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
