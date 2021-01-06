#!/bin/bash
grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' log.txt > ips.txt
awk '{print $4, $5}' log.txt | tr -d "[]" > dates.txt 
awk '{print $6}' log.txt | tr -d  '"' > get.txt
awk '{print $7}' log.txt > link.txt
awk '{print $8}' log.txt > protocol.txt
awk '{print $9}' log.txt > server.txt
awk '{print $10}' log.txt > body.txt
awk '{print $13,$14}' log.txt | tr -d "(+;" > device.txt
awk '{print $12}' log.txt > browser.txt
awk '{print $11}' log.txt > source.txt

#sed -n '0'p log.txt
#printf "hello\nworld" >> index.html


NN=$(cat log.txt | wc -l)
KK=1
echo $NN
echo $KK

touch index.html



for (( c=$KK; c<=$NN; c++ ))
do
    #k=$(sed -n "$c"p source.txt)
    #echo "$k"

    dates=$(sed -n "$c"p dates.txt)
    get=$(sed -n "$c"p get.txt)
    link=$(sed -n "$c"p link.txt)
    protocol=$(sed -n "$c"p protocol.txt)
    server=$(sed -n "$c"p server.txt)
    body=$(sed -n "$c"p body.txt)
    device=$(sed -n "$c"p device.txt)
    browser=$(sed -n "$c"p browser.txt)
    source=$(sed -n "$c"p source.txt)
    ips=$(sed -n "$c"p ips.txt)
    printf "\n<hrnoshade><h1>Расшифровка клиента $c</h1>$dates с хоста $ips по протоколу $protocol был
выполнен запрос типа $get для получения ресурса, находящегося по ссылке
$link . Код ответа на запрос от сервера: $server . Такой ответ не предполагает
наличия тела ответа (количество переданных байт - $body ). Запрос выполнялcя по сайту $source . Клиент использовал для обращения программу $browser , ОС клиента: $device  <h1>Конец расшифровки</h1><hrnoshade>\n" >> index.html


done

rm ips.txt
rm dates.txt 
rm get.txt
rm link.txt
rm protocol.txt 
rm server.txt
rm source.txt
rm browser.txt
rm device.txt
rm body.txt
