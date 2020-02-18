#!/usr/bin/env bash

yum --enablerepo=remi -y install tmux2

tpm_dir=~/.tmux/plugins/tpm

if [[ ! -d ${tpm_dir} ]]; then
  git clone https://github.com/tmux-plugins/tpm ${tpm_dir}
fi

cp /vagrant/resources/vagrant/centos/205-install-tmux-priv/resources/.tmux.conf ~/
