#!/bin/bash

#declaring variables for inside loop
let edir=0
let dir=0
let efile=0
let file=0


input=$@ #value from input stored in variable
tail="/*" #tail end for the pathname
t=$input$tail #concatenating received path with tail end

#For loop. Looping inside the directory
for f in $t 
do
if [[ -d $f ]]; then #Check if its a valid directory
    if [[ -z $(ls -A $f) ]]; then #check if the directory is empty
        let edir=edir+1 # if empty add 1 to the existing count
    else
        let dir=dir+1 #if not empty add 1 to the existing count
    fi
else
    if ! [[ -s $f ]]; then #check if the file is empty
        let efile=efile+1 #if empty add 1 to the exisiting count
    else
        let file=file+1 #if not empty add t1 to the existing count
    fi
fi

done

#printing the output
echo -e "The $input directory contains:\n $file files that contain data.\n $efile files are empty.\n $dir non-empty directories.\n $edir empty directories." 
exit 0
