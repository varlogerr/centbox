#!/usr/bin/env bash

yum -y autoremove \
  && yum --enablerepo='*' clean all \
  && find /tmp /var/cache/yum -mindepth 1 -maxdepth 1 | xargs rm -rf
