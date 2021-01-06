#!/bin/sh

#Указываем путь к директории с бэкапами
BACKUP=/home/none/backup

#Получаем номер дня недели
DAY=$(date +%u)

#Если вторник - удаляем файл метаданных и архивы
if [ "$DAY" = "2" ]; then
   NUM="0"
   rm -rf $BACKUP/example.snar
   rm -rf $BACKUP/*.tgz
else
   NUM="$DAY"
fi

#Создаем архив
tar --create \
    --gzip \
    --file=$BACKUP/example.$NUM.tgz \
    --ignore-failed-read \
    --ignore-"*.txt"\
    --listed-incremental=$BACKUP/example.snar \
   /home/none
