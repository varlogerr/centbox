#!/usr/bin/env bash

tpm_dir=~/.tmux/plugins/tpm

if [[ ! -d ${tpm_dir} ]]; then
  git clone https://github.com/tmux-plugins/tpm ${tpm_dir}
fi

cp /vagrant/resources/vagrant/centos/resources/tmux/.tmux.conf ~/
