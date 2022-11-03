#~/bin/bash

ps aux|grep -o "evince [^*]*$"| awk ' BEGIN { print "# List of papers/books\n"} ; /evince [^*]*$/ { x = gensub(/evince ([^*]*)$/, "\"\\1\"", "1"); print ( x ) }'
