#!/usr/bin/env bash

yum -y --enablerepo=ius install httpd mod_ssl

if [[ "$(systemctl is-enabled httpd)" != "enabled" ]]; then
  systemctl enable httpd
fi

if [[ "$(systemctl is-active httpd)" != "active" ]]; then
  systemctl start httpd
fi
