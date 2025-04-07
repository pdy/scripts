#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Missing binary elf file parameter"
    exit 1
fi

#readelf -d $1 | grep NEEDED
ldd -d $1
