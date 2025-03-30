#!/bin/bash

user="pdy"
email="pdrzycimski@gmail.com"

script_name=$(basename "$0")

USAGE="Usage ${script_name} <git_repo_path> (required) <user_name> (optional default \"${user}\") <user_email> (optional default \"${email}\")"

if [ $# -eq 0 ]; then
  echo ""
  echo "Path to git repo required as a first argument !!!"
  echo $USAGE
  echo ""
  exit 1
fi

if [ $# -gt 3 ]; then
  echo ""
  echo "Too many arguments !!!"
  echo $USAGE
  echo ""
  exit 1
fi

path=$1

if [ $# -eq 2 ]; then
  user=$2
fi

if [ $# -eq 3 ]; then
  user=$2
  email=$3
fi

pushd $path &&

echo ""
echo "Changing local user.name to \"${user}\" in ${path}"

git config --local user.name "${user}" &&

echo "Changing local user.email to \"${email}\" in ${path}"
echo ""

git config --local user.email "${email}"

popd
