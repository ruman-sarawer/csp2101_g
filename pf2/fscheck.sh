#!/bin/bash

#Name : Ruman Sarawer
#Student ID: 10146414

#function declaration
getprop() { 
    fsize=$(du -k $1 | cut -f1) #getting the file size of the file passed.
    wcount=$(wc -w <$1) #getting the word count inside the file.
    mdate=$(date -r countdf.sh "+%d-%m-%Y %H:%M:%S") #fetching the last modified date of the file.
    echo "The file $1 contains $wcount words and is $fsize K in size and was last modified $mdate" #Priinting all details.
}

#main of program
read -p "Enter the file name to get the details : " userfile  #Promting user for filename
getprop $userfile  #calling the function declared on top.

exit 0