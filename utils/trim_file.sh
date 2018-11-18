#!/bin/bash

if [ $# -eq 0 ]; then
   echo "Text file to be trimmed has to be provided as first argument" 
   exit 1
fi

from=$1
to=$from.trimmed

tr -d '\t\n ' < $from > $to

