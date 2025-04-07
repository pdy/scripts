#!/bin/bash

repo=.

if [ $# -eq 1 ]; then
  repo=$1
fi

echo "Running fetch and pull in \"${repo}\""

pushd $repo &&

git fetch origin --prune && git pull 

popd
