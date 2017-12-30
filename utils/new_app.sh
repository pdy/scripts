#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Missing AppName parameter"
    exit 1
fi

cd /tmp &&
git clone https://github.com/severalgh/AppTemplate.git
cd - &&

mv /tmp/AppTemplate $1 &&

rm $1/README.md

grep -rl AppTemplate $1 | xargs sed -i "s/AppTemplate/$1/g" &&

mv $1/src/AppTemplate.cpp $1/src/$1.cpp

sudo rm -r $1/.git
