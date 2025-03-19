#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Invalid argument count! First argument is LICENSE second file type [cpp, h, hpp etc.]"
    exit
fi

for i in $(find . -name "*.$2");
do
  if ! grep -q Copyright "$i"
  then
    cat "$1" "$i" >"$i".new && mv "$i".new "$i"
  fi
done
