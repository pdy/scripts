#!/bin/bash

#
# Should be run as su
#

if [ "$(id -u)" != "0" ]; then
    echo "Need su privileges to access /usr/bin"
    exit 1
fi

SCRIPT_DIR=`dirname "$0"`

#for f in $SCRIPT_DIR/utils/pdy_*; do

baseName=`echo $f | cut -d "." -f 2`
#echo $baseName
#echo cp $f /usr/bin/$baseName &&

  
#echo cp -a $f ${f%%.sh}
  
#chmod +x /usr/bin/$baseName


#done

cp $SCRIPT_DIR/utils/pdy_* /usr/bin/
chmod +x /usr/bin/pdy_*
