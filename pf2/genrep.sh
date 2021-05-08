#!/bin/bash

#Name : Ruman Sarawer
#Student ID: 10146414

#Declaring pattern for stripping from the lines
pre="<tr><td>" 
post="<\/td><\/tr>"
mid="<\/td><td>"

#Using cat to open the html file > Getting the table row using grep > stripping the pattern using sed > Calculating the total and printing using awk.
cat attacks.html | grep "<td>" | sed -e "s/^$pre//g; s/$post$//g; s/$mid/  /g" | awk 'BEGIN { print "Attacks \t Instances(Q3)" } { sum=($2+$3+$4); printf $1"\t\t %.f\n", sum }'

exit 0