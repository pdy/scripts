#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Missing AppName parameter"
    exit 1
fi

cd /tmp &&
git clone https://github.com/pdy/AppTemplate.git
sudo rm -r AppTemplate/.git
cd - &&

mv /tmp/AppTemplate $1 &&

rm $1/README.md

grep -rl AppTemplate $1 | xargs sed -i "s/AppTemplate/$1/g" &&

mv $1/AppTemplate.cpp $1/$1.cpp

