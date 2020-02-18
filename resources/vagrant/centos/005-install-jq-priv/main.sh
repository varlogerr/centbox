#!/usr/bin/env bash

dest_file=/usr/local/bin/jq
[[ -f "${dest_file}" ]] && exit 0

wget -q -O "${dest_file}" https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64 >/dev/null
chmod +x "${dest_file}"
