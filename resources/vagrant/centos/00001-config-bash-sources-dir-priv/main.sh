#!/usr/bin/env bash

sources_dir="${HOME}/.bash-sources"
grep '\.bash-sources' ~/.bashrc >/dev/null && exit 0

mkdir -p "${sources_dir}"

echo "$(
  cat <<EOL

sources_dir="${sources_dir}"
[[ -d "\${sources_dir}" ]] && for src in \$(
  find "\${sources_dir}" -type f -name *.sh | sort -n
); do
  source "\${src}"
done
EOL
)" >> ~/.bashrc
