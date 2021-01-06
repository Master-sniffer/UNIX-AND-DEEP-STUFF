#!/bin/bash

ip=$1; mask=$2

IFS=. read -r i1 i2 i3 i4 <<< "$ip"
IFS=. read -r m1 m2 m3 m4 <<< "$mask"

echo "network:   $((i1 & m1)).$((i2 & m2)).$((i3 & m3)).$((i4 & m4))"
echo "broadcast: $((i1 & m1 | 255-m1)).$((i2 & m2 | 255-m2)).$((i3 & m3 | 255-m3)).$((i4 & m4 | 255-m4))"
echo "first IP:  $((i1 & m1)).$((i2 & m2)).$((i3 & m3)).$(((i4 & m4)+1))"
echo "last IP:   $((i1 & m1 | 255-m1)).$((i2 & m2 | 255-m2)).$((i3 & m3 | 255-m3)).$(((i4 & m4 | 255-m4)-1))"
