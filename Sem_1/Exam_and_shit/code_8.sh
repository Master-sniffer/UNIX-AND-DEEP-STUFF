#!/bin/bash
#Сценарий должен создать архив (*.tar.gz) всех файлов в домашнем каталоге пользователя (/home/user-name), которые изменялись в течение последних 24 часов. Подсказка: воспользуйтесь утилитой find. 


mkdir folder_to_zip

find ~ -type f -mtime -1 > files_tozip

while read line; do
    
    cp $line folder_to_zip
    
done < files_tozip

tar -cvf archive.tar.gz folder_to_zip

rm -r folder_to_zip
rm files_tozip
