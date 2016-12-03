#!/bin/bash

if [ $# -eq 0 ] then
   echo "Username should be provided as first argument" 
   exit
fi

userName=$1
vboxDebian=""

if [ $# -eq 2 ] then
    vboxDebian=$2   
fi

apt-get update && apt-get upgrade &&
apt-get install sudo &&
adduser $userName sudo &&

# guest additions
guest_additions() {
    echo "Installing vbox guest additions"
    return apt-get install build-essential module-assistant &&
        mount /media/cdrom &&
        sh /media/cdrom/VBoxLinuxAdditions.run
}

if [ "$vboxDebian" == "vboxdebian" ] then
    if guest_additions then
        echo "Guest additions installed"
    else
        echo "Error during guest addition installatio"
        exit
    fi
fi

cd ~/
mkdir repo
mkdir repo/github
cd repo/github

apt-get install git &&

git clone https://github.com/severalgh/scripts.git &&

git clone https://github.com/severalgh/dotfiles.git &&

./scripts/vim_from_source.sh

cd ~/
cp repo/github/dotfiles/vim/.vimrc ~/
./repo/github/vundle_checkout.sh
cp repo/github/dotfiles/vim/.ycm_extra_conf.py ~/.vim/

reboot now



