#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Missing AppName parameter"
    exit 1
fi

TMP=$HOME/tmp

mkdir -p $TMP &&

cd $TMP &&
git clone https://github.com/pdy/AppTemplate.git
rm -rf AppTemplate/.git
cd - &&

mv $TMP/AppTemplate $1 &&

rm $1/README.md

grep -rl AppTemplate $1 | xargs sed -i "s/AppTemplate/$1/g" &&

mv $1/AppTemplate.cpp $1/$1.cpp

