#!/bin/bash

if [ $# -eq 0 ]; then
   echo "Username should be provided as first argument" 
   exit
fi

userName=$1
vboxDebian=""

if [ $# -eq 2 ]; then
    vboxDebian=$2   
fi

apt-get update && apt-get upgrade &&
apt-get install sudo &&
adduser $userName sudo &&

# guest additions
guest_additions() {
    echo "Installing vbox guest additions"
    apt-get install build-essential module-assistant &&
        mount /media/cdrom &&
        sh /media/cdrom/VBoxLinuxAdditions.run
}

if [ "$vboxDebian" == "vboxdebian" ] then
    if guest_additions; then
        echo "Guest additions installed"
    else
        echo "Error during guest addition installation"
        exit
    fi
fi

reboot now
