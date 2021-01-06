#!/bin/bash

echo "we have a task to do this math's task Ax^2 + Bx + C = 0"

echo "Enter A"
read A

echo "Enter B"
read B

echo "Enter C"
read C

rar=$(bc <<< "$B^2-4*$A*$C")
echo $rar
if [ $rar \> 0 ]
    then 
        echo "((-1*$B)+sqrt($rar))/2*$A" | bc -l
        echo "((-1*$B)-sqrt($rar))/2*$A" | bc -l
fi

