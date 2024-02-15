#!/usr/bin/env bash

set -e
set -u
set -o pipefail
set -x
shopt -s failglob


# 1. Update the system
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
sudo apt update ; sudo apt --yes upgrade


# 2. Install Python 3, pip and pipx
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
sudo apt --yes install \
  python3 \
  python3-pip \
  pipx

pipx ensurepath

pip3 --version
pipx --version

