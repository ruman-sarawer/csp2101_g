#!/bin/bash

while : # infinite loop starting
do
    read -p "Enter an integer(Either 20 or 40) " var1 #Prompting user input

    if [[ $var1 -ne 20 && $var1 -ne 40 ]] || ! [[ $var1 =~ ^[0-9]+$ ]] ; then #Checking condition, whether user input is not 20 or 40 or an integer
        echo "Invalid Value. Try again"
        continue # if Invalid user input, loop starts again.
    else
        echo "Valid Input. Exiting..."
        break # Breaking the lopp if user enter 20 or 40
    fi
done
exit 0