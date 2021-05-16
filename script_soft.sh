#!/bin/bash

#Name : Ruman Sarawer
#Student ID: 10146414


declare -a logs
pattern="serv_acc_log.+csv$"
menu_num=1

for file in ./*; do
    if [[ $file =~ $pattern ]]; then
        logs+=($(basename $file))
    fi
done 

count=${#logs[*]}
echo -e "The directory contains $count server logs. \n"

for file in "${logs[@]}"; do 
    echo -e "$menu_num   $file"
    ((menu_num++))
done 

echo -e "\t"
read -p "Enter the number of log file in the above menu you wish to search.[Eg. 1, 2 ,3, 4] or enter 0 for all -  " sel

if [[ $sel -eq 0 ]]; then
    echo -e "\nAll files have been selected \n\n"
    
else
    echo -e "\nThe log file $sel has been selected \n\n"
fi

echo -e "Field Criteria \n\n1\tPROTOCOL \n2\tSRC IP \n3\tSRC PORT \n4\tDEST IP \n5\tDEST PORT \n6\tPACKETS \n7\tBYTES \n8\tCLASS \n"
read -p "Choose the Fields for the search. You can choose any from 1 to 3 Fields." a b c
echo -e "Chosen values are\n$a\n$b\n$c"




exit 0