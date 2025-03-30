#!/bin/bash

#
# Should be run as local user
#

if [ "$(id -u)" == "0" ]; then
    echo "This script must not be run as su !!!"
    exit 1
fi

INSTALL_PATH=$HOME/bin

echo ""
echo "Removing pd* from ${INSTALL_PATH}"
rm $INSTALL_PATH/pd*
echo ""
echo "Removed"
echo ""
