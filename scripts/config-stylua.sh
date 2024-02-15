#!/usr/bin/env bash

set -e
set -u
set -o pipefail
set -x
shopt -s failglob


# Write stylua.toml configuration file
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
mkdir \
    --verbose \
    --parents \
    ~/.config/stylua

cat << "EOF" > ~/.config/stylua/stylua.toml
indent_type = "Spaces"
indent_width = 2
EOF

