#!/bin/bash

#
# Should be run as root
#

if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root"
    exit 1
fi

if [ $# -eq 0 ]; then
   echo "Local username should be provided as first argument" 
   exit 1
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
    m-a prepare &&
    mount /media/cdrom &&
    sh /media/cdrom/VBoxLinuxAdditions.run
}

if [ "$vboxDebian" == "vboxdebian" ]; then
   guest_additions 
fi

reboot now