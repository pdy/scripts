#!/bin/bash

#
# Should be run as su
#

if [ "$(id -u)" != "0" ]; then
    echo "Need su privileges to access /usr/bin"
    exit 1
fi

echo "Installing nfar"
cp ./utils/find_and_replace.sh /usr/bin/nfar && chmod +x /usr/bin/nfar &&
echo "Installing nupdate"
cp ./utils/nupdate.sh /usr/bin/nupdate && chmod +x /usr/bin/nupdate &&
echo "Installing napp"
cp ./utils/new_app.sh /usr/bin/napp && chmod +x /usr/bin/napp &&
echo "Installing ngrep"
cp ./utils/ngrep.sh /usr/bin/ngrep && chmod +x /usr/bin/ngrep
