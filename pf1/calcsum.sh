#!/bin/bash

#Name : Ruman Sarawer
#Student ID: 10146414

calc=$(($1 + $2 + $3)) #receiving passed values and calculating the sum
echo $calc # displaying sum

#Checkig the sum is less than or equal to 30
if [ $calc -le 30 ]; then 
    echo "The sum of $1 and $2 and $3 is $calc" #print to console the total if the value is less than or equal to 30
else
    echo "Sum exceeds maximum allowable" #print to console if the value exceeds 30
fi
exit 0