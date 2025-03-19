#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Require one argument - path to git repository to set local user name and email."
  exit 1
fi

path=$1

user="pdy"
email="pdrzycimski@gmail.com"

pushd $path &&

echo "Changing local user.name to ${user} in ${path}"

git config --local user.name $user &&

echo "Changing local user.email to ${email} in ${path}"

git config --local user.email $email 

popd
