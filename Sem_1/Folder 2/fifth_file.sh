#!/bin/bash
read direction
read time

echo "That's how many files have suffered changes these $time days"
find $direction -mtime -$time | wc -l
