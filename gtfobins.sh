#!/bin/bash 

for commands in `cat "$1" | cut -f 4 -d "/" | sed 's/ .*//' `;do
echo ---$commands--- && curl -I https://gtfobins.github.io/gtfobins/$commands/ -o /dev/null -w '%{http_code}\n' -s ;done