#!/bin/bash

#
# Should be run as local user
#

if [ "$(id -u)" == "0" ]; then
    echo "This script must not be run as root"
    exit 1
fi

cd ~/
mkdir repo
mkdir repo/github
cd repo/github

sudo apt-get -qq install git git-core htop clang gdb build-essential cmake nikto nmap cloc &&

git clone https://github.com/severalgh/scripts.git &&

git clone https://github.com/severalgh/dotfiles.git &&

sudo ./scripts/new_debian_helpers/guest_additions.sh
./scripts/vim/vim_from_src.sh

cd ~/
cp repo/github/dotfiles/vim/.vimrc ./

./repo/github/scripts/vim/vundle_checkout.sh
cp repo/github/dotfiles/vim/.ycm_extra_conf.py ~/.vim/





