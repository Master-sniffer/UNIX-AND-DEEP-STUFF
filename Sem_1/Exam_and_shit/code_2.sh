#!/bin/bash
#Написать скрипт, который из /etc/passwd выведет название командного интерпретатора для пользователя, имя которого передано скрипту в качестве параметра. (Хорошо бы еще написать обработку ошибок по типу “А вдруг такого пользователя нет”) 


echo "enter username"
read name
grep $name:/bin /etc/passwd | tail -c 6 | cut -d '/' -f 2
echo "last symbols is user's interp"
