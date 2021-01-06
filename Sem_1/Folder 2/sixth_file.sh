#!/bin/bash

ps -e -o vsz,comm= | sort -k 1 -n | tail -n 10

