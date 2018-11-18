#!/bin/bash

if [ $# -eq 0 ]; then
   echo "Missing file as first argument"
   exit 1
fi

from=$1

xxd -i $from 

