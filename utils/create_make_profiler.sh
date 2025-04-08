#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Missing venv name parameter"
    exit 1
fi

#sudo apt install python3-venv

name=$1

python3 -m venv $name 
$name/bin/pip3 install https://github.com/gojuno/make-profiler/archive/master.zip
