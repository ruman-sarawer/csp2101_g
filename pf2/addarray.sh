#!/bin/bash

#Name : Ruman Sarawer
#Student ID: 10146414

#declaring 2 arrays to add values
declare -a ass1  
declare -a ass2

#adding values into arrays
ass1=(12 18 20 10 12 16 15 19 8 11)
ass2=(22 29 30 20 18 24 25 26 29 30)

#declaring 2 empty variables to use inside loop
sum=0
count=0

for ((i=0; i<${#ass1[@]}; i++));do #Looping until the last item of array. As both arrays are of same length, it will work without any flaws.

    sum=$(( ass1[i] + ass2[i] )) #adding both values of array1 and array2
    count=$((count+1)) #creatubg a variable to store the count of items to use for echoing.
    echo -e "Student_$count Result:\t$sum" #echoing the count and the sum 
done

exit 0