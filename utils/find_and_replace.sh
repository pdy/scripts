#!/bin/bash

toBeReplaced=$1
newStr=$2
dir='./'

if [ $# -eq 3 ]; then
    dir=$3 
fi

echo "Replacing [$toBeReplaced] to [$newStr] in dir [$dir]"

grep -rl $toBeReplaced $dir | xargs sed -i "s/$toBeReplaced/$newStr/g"
