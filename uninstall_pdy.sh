#!/bin/bash

#
# Should be run as su
#

if [ "$(id -u)" != "0" ]; then
    echo "Need su privileges to access /usr/bin"
    exit 1
fi

rm /usr/bin/pdy_*
