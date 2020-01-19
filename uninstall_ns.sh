#!/bin/bash

#
# Should be run as su
#

if [ "$(id -u)" != "0" ]; then
    echo "Need su privileges to access /usr/bin"
    exit 1
fi

SCRIPT_DIR=`dirname "$0"`

echo "Unistalling nfar"
rm /usr/bin/nfar &&
echo "Unistalling nupdate"
rm /usr/bin/nupdate &&
echo "Unistalling napp"
rm /usr/bin/napp &&
echo "Unistalling ngrep"
rm /usr/bin/ngrep
echo "Unistalling nsysver"
rm /usr/bin/nsysver
