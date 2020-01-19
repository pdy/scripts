#!/bin/bash

strToFind=$1
dir='./'

if [ $# -eq 2 ]
    then
       dir=$2 
fi

grep -Hrn $1 $2 
