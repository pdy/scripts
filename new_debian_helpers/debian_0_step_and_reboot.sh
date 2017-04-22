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

apt-get update && apt-get upgrade &&
apt-get install sudo &&
adduser $userName sudo &&

reboot now
