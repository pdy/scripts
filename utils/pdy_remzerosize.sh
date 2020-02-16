#!/bin/bash


if [ $# -ne 1 ]; then
    echo "Missing directory parameter" 
    exit 1
fi


dir=$1

find $dir -size 0 -delete
