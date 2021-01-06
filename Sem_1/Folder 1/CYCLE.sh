#!/bin/bash
file="useri"


ps aux > ps.out
sort ps.out -u > sorted.ps
cut -d' ' -f 1 ps.out > userss
uniq userss -u > users
uniq users -u > useri


touch index.html
printf "<html>" >> index.html
printf "<title>Статистика процессов</title>" >> index.html
printf "<body>" >> index.html
printf "<h1>Распределение процессов</h1>" >> index.html


for var in $(cat $file | uniq)
do
grep "$var" sorted.ps > $var+1.txt
sed 's/^/<li>/' $var+1.txt > $var.html

#wc $var+1.txt -l > $var.total
grep "$var" sorted.ps | wc -l > $var.total
#be= cat $var.html
#bec= cat $var.total

#printf "$be" >> index.html
cat $var.html >> index.html
cat $var
printf "<hrnoshade>" >> index.html
printf "\n<h2>$var " >> index.html
cat $var.total >> index.html
#printf "\n<h2> " >> index.html

#wc $var+1.txt -l | tail -1 >> index.html 
printf "процессов</h2>" >> index.html

#printf "<hrnoshade>" >> index.html
#printf "$bec" >> index.html

done


printf "</body></html>" >> index.html

wc *+1.txt -l | tail -1 > itogi 
cat itogi


