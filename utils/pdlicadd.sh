#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Invalid argument count! Need to pass path to license file which contains license terms."
    exit
fi

for i in $(find . -name '*.cpp'); # or whatever pattern
do
  if ! grep -q Copyright "$i"
  then
    cat "$1" "$i" >"$i".new && mv "$i".new "$i"
  fi
done
