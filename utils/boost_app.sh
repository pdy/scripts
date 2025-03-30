#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Missing AppName parameter"
    exit 1
fi

TMP=$HOME/tmp

mkdir -p $TMP &&

cd $TMP &&
git clone https://github.com/pdy/BoostAppTemplate.git
rm -rf BoostAppTemplate/.git
cd - &&

mv $TMP/BoostAppTemplate $1 &&

rm $1/README.md

grep -rl BoostAppTemplate $1 | xargs sed -i "s/BoostAppTemplate/$1/g" &&

mv $1/src/BoostAppTemplate.cpp $1/src/$1.cpp

