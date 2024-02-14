#!/usr/bin/env bash

set -e
set -u
set -o pipefail
set -x
shopt -s failglob

latest_nvm=$(curl -sL https://api.github.com/repos/nvm-sh/nvm/releases/latest | jq -r ".tag_name")

cd ~
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/"${latest_nvm}"/install.sh | bash

source ~/.nvm/nvm.sh

nvm install node
nvm use node

