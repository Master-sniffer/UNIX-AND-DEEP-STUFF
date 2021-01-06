#!/bin/bash

entries=$(shuf -i 1-50 -n 5 | sed ':a;N;$!ba;s/\n/ /g')
echo $entries
TIME=$(date '+%S:%M:%H')
DATE=$(date '+%d/%m/Y')

result="$DATE $TIME -> $entries"

if [ "$1" = "-f" ]; then
    if [ $(($#)) -ne 2]; then
        echo "Need to give a flag" >&2
        exit 1
    fi
    
    echo $RESULT >> $2

else
    echo $RESULT >&1
fi



