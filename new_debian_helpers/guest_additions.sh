#!/bin/bash

if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root"
    exit 1
fi

echo "Installing vbox guest additions"
apt-get install build-essential module-assistant &&
m-a prepare &&
mount /media/cdrom
sh /media/cdrom/VBoxLinuxAdditions.run

