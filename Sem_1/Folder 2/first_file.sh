#!/bin/bash

read a
read b


if [[ $a != 0 && $b != 0 && $(( a / 1 )) == $a && $(( b / 1 )) == $b ]]
    then
    for i in $(seq $a $b)
        do
            if [[ $(( i % 12 )) == 0 ]]
                then
                    echo $i
            fi
        done
fi
