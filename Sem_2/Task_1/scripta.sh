#!/bin/bash

echo "push 1 to make a dir with the specific name. 2 - To remove the dir. 3 - To move to another dir. 4- make an empty file with the specific name. 5 - To enter text in the file (you should choose it). 6 - See the contents of the file. 7 - delete the file with the specific name. 8 - copy the files from one folder to another. 9 - Move files from one place to another. 10 - rename files. 0 - To kill the program."

while read input
do
    if [[ $input = "0" ]] 
        then 
            exit 0

    elif [[ $input = "1" ]]
        then 
            echo "Okay ! Enter the dir name"
            read diR
            mkdir $diR            
        

    elif [[ $input = "2" ]]
        then 
            echo "Okay ! Enter the dir name"
            read diR
            rmdir $diR    

    elif [[ $input = "3" ]]
        then
            echo "enter to which dir u wanna go"
            read diR
            cd $diR
            echo "$(pwd)"

    elif [[ $input = "4" ]]
        then
            echo "okay ! Enter the name of the file !"
            read fok
            touch $fok
            ls

    elif [[ $input = "5" ]]
        then
            echo "noice ! Enter the name of the file where u wanna work"
            read fok
            xed $fok

    elif [[ $input = "6" ]]
        then
            echo "Damn, enter the name of the file and i will crack it !"
            read fok
            cat $fok

    elif [[ $input = "7" ]]
        then
            echo "Name the file with which one we gotta take care !"
            read fok
            rm $fok

    elif [[ $input = "8" ]]
        then
            echo "K, sounds hard but executable ! What is the name of the first dir ?"
            read diR
            echo "Noice, now i need the second one !"
            read diRA
            cp -r $diR $diRA

    elif [[ $input = "9" ]]
        then
            echo "Enter the file which u wanna transfer !"
            read fok
            echo "Enter the place where u wanna deliver them !"
            read pat
            mv $fok $pat

    elif [[ $input = "10" ]]
        then
            echo "K, enter the name of the file"
            read fok
            echo "What is the final name ?"
            read nam
            mv -v $fok $nam

    else 
        echo "i got to finish myself"
        exit 0


    fi
done
