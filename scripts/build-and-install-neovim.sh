#!/usr/bin/env bash

set -e
set -u
set -o pipefail
set -x
shopt -s failglob


# 1. Update the system
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
sudo apt update ; sudo apt --yes upgrade


# 2. Clone Neovim 
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
git clone https://github.com/neovim/neovim


# 3. Install build prerequisites
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
sudo apt --yes install \
    ninja-build \
    gettext \
    cmake \
    unzip \
    curl


# 4. Compile and build from source
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
cd ./neovim \
    && make CMAKE_BUILD_TYPE=RelWithDebInfo


# 5. Create a Debian package file; install the package with dpkg
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
cd ./build \
    && cpack -G DEB && sudo dpkg --install nvim-linux64.deb

