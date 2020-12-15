#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Missing AppName parameter"
    exit 1
fi

cd /tmp &&
git clone https://github.com/pdy/BoostAppTemplate.git
sudo rm -r BoostAppTemplate/.git
cd - &&

mv /tmp/BoostAppTemplate $1 &&

rm $1/README.md

grep -rl BoostAppTemplate $1 | xargs sed -i "s/BoostAppTemplate/$1/g" &&

mv $1/src/BoostAppTemplate.cpp $1/src/$1.cpp

