#!/bin/bash
#Для каждого файла, из заданного списка, сценарий должен определить тип архиватора, которым был создан тот или иной файл (с помощью утилиты file). Затем сценарий должен выполнить соответствующую команду разархивации (gunzip, bunzip2, unzip, uncompress или что-то иное). Если файл не является архивом, то сценарий должен оповестить пользователя об этом и ничего не делать с этим файлом

extract () {
     if [ -f $1 ] ; then
        while read line; do
             case $line in
                 *.tar.bz2)   tar xjf $line     ;;
                 *.tar.gz)    tar xvaf $line    ;;
                 *.bz2)       bunzip2 $line     ;;
                 *.rar)       rar x $line       ;;
                 *.gz)        gunzip $line      ;;
                 *.tar)       tar xf $line      ;;
                 *.tbz2)      tar xjf $line     ;;
                 *.tgz)       tar xzf $line     ;;
                 *.zip)       unzip $line       ;;
                 *.Z)         uncompress $line  ;;
                 *.7z)        7z x $line    ;;
                 *)           echo "'$line' unknown format" ;;
             esac
        done < $1
      else
        echo "'$1' is not a valid file"
      
     fi
}

extract $1
