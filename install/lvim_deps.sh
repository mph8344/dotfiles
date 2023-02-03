#!/usr/bin/env bash

sudo apt-add-repository ppa:deadsnakes/ppa
sudo apt install python3.11
sudo apt-get install python3-pip
sudo apt-get install cargo

echo LV_BRANCH='release-1.2/neovim-0.8' bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/fc6873809934917b470bff1b072171879899a36b/utils/installer/install.sh)
