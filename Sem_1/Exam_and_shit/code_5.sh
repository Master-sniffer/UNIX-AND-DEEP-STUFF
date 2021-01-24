#!/bin/bash
#Написать скрипт, который выдает список разделов жесткого диска, на которых свободной памяти осталось менее 100 Мб в формате name|free memory (ДАТЬ ПРАВА НА ИСПОЛНЕНИЕ И ЗАПУСКАТЬ ТАК ./script.sh)


r='(\w+)(\s+)([[:digit:]]+)(\s+)([[:digit:]]+)(\s+)([[:digit:]]+)(\s+)([[:digit:]]+%)(\s+)(.*)'

df -k > dftext

while read line; do
    if [[ $line =~ $r ]]; then
        num=102400
        if [ "${BASH_REMATCH[7]}" -lt "$num" ]; then
            echo "${BASH_REMATCH[11]} | ${BASH_REMATCH[7]} KB"
        fi
    fi
done < dftext

rm dftext
