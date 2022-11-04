#!/bin/bash

tag="$1"
shift

while [[ $# > 0 ]]; do
  name=`basename "$1"`
  if [[ -e $1.tags ]];
  then
    n=`grep -q "^$tag$" "$1.tags" && echo $?`
    if [[ -n $n ]];
    then
      echo $name
    fi
  fi
  shift
done
