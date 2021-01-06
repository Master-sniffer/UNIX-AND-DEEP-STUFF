#!/bin/bash

TIME=$(date '+%S:%M:%H')
DATE=$(date '+%d/%m/%Y')

echo $TIME $DATE >> /tmp/run.log
echo "Hello"

wc -l /tmp/run.log 

