#!/bin/bash

#
# Should be run as local user
#

if [ "$(id -u)" == "0" ]; then
    echo "This script must not be run as su"
    exit 1
fi

cd ~/
mkdir -p repo/github
cd repo/github

# install what is essential
sudo apt-get install git git-core htop clang gdb build-essential cmake nmap cloc linux-tools &&

# install my custom stuff
git clone https://github.com/pdy/scripts.git &&
git clone https://github.com/pdy/dotfiles.git &&

sudo ./scripts/new_debian_helpers/guest_additions.sh
./scripts/vim/vim_from_src.sh
sudo ./repo/github/scripts/install.sh

cd ~/
./repo/github/scripts/vim/vundle_checkout.sh
./repo/github/dotfiles/install.sh






