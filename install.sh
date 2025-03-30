#!/bin/bash

#
# Should be run as local user
#

if [ "$(id -u)" == "0" ]; then
    echo "This script must not be run as su !!!"
    exit 1
fi

INSTALL_PATH=$HOME/bin
SCRIPT_DIR=`dirname "$0"`

#for f in $SCRIPT_DIR/utils/pdy_*; do

#baseName=`echo $f | cut -d "." -f 2`
#echo $baseName
#echo cp $f $INSTALL_PATH &&

  
#echo cp -a $f ${f%%.sh}
  
#chmod +x /usr/bin/$baseName

#done

echo ""
echo "Installing to ${INSTALL_PATH}"
echo ""

mkdir -p $INSTALL_PATH &&
cp $SCRIPT_DIR/utils/pd* $INSTALL_PATH &&
chmod +x $INSTALL_PATH/pd*

echo "Finished. Remember to run export PATH=\"${INSTALL_PATH}:\$PATH\" if you haven't already"
echo ""
