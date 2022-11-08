#!/bin/bash

while [[ $# > 0 ]]; do
  if [[ -e $1 ]];
  then
    echo `cat "$1" | awk '/^.*$/ { x = gensub(/^([^#]*)(#.*)?$/, "\\\\1", "1"); print (x) }'` | xargs evince &
  fi
  shift
done
