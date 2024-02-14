#!/bin/bash

set -e
set -u
set -o pipefail
set -x
shopt -s failglob

# CaskaydiaCove Nerd Font
wget --output-document='/tmp/nerd-cascadia-code.zip' \
  'https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/CascadiaCode.zip'

# UbuntuMono Nerd Font
wget --output-document='/tmp/nerd-ubuntu-mono.zip' \
  'https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/UbuntuMono.zip'

sudo mkdir --parents \
  /usr/local/share/fonts/truetype/nerd-cascadia-code \
  /usr/local/share/fonts/truetype/nerd-ubuntu-mono

sudo unzip \
  -d /usr/local/share/fonts/truetype/nerd-cascadia-code \
  -j /tmp/nerd-cascadia-code.zip \
  '*.ttf'

sudo unzip \
  -d /usr/local/share/fonts/truetype/nerd-ubuntu-mono \
  -j /tmp/nerd-ubuntu-mono.zip \
  '*.ttf'

sudo fc-cache \
    --force \
    --verbose

