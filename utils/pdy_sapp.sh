#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Missing AppName parameter"
    exit 1
fi

cd /tmp &&
git clone https://github.com/pdy/SimpleAppTemplate.git
sudo rm -r SimpleAppTemplate/.git
cd - &&

mv /tmp/SimpleAppTemplate $1 &&

rm $1/README.md

grep -rl SimpleAppTemplate $1 | xargs sed -i "s/SimpleAppTemplate/$1/g" &&

mv $1/SimpleAppTemplate.cpp $1/$1.cpp

