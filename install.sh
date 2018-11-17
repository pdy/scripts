#!/bin/bash

#
# Should be run as su
#

if [ "$(id -u)" != "0" ]; then
    echo "Need su privileges to access /usr/bin"
    exit 1
fi

SCRIPT_DIR=`dirname "$0"`

echo "Installing nfar"
cp $SCRIPT_DIR/utils/nfar.sh /usr/bin/nfar && chmod +x /usr/bin/nfar &&
echo "Installing nupdate"
cp $SCRIPT_DIR/utils/nupdate.sh /usr/bin/nupdate && chmod +x /usr/bin/nupdate &&
echo "Installing napp"
cp $SCRIPT_DIR/utils/napp.sh /usr/bin/napp && chmod +x /usr/bin/napp &&
echo "Installing ngrep"
cp $SCRIPT_DIR/utils/ngrep.sh /usr/bin/ngrep && chmod +x /usr/bin/ngrep
