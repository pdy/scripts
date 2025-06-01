#!/bin/sh

if [ $# -ne 1 ]; then
    echo "Missing ELF binary path"
    exit 1
fi

readelf -Ws --demangle --dyn-syms $1
