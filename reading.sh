#!/bin/bash

echo `cat "$1" | awk '/^.*$/ { x = gensub(/^([^#]*)(#.*)?$/, "\\\\1", "1"); print (x) }'` | xargs evince
