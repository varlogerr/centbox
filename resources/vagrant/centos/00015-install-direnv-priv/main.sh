#!/usr/bin/env bash

dest_file=/usr/local/bin/direnv
[[ -f "${dest_file}" ]] && exit 0

wget -q -O "${dest_file}" https://github.com/direnv/direnv/releases/download/v2.21.2/direnv.linux-amd64 >/dev/null
chmod +x "${dest_file}"

