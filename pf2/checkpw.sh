#!/bin/bash

#Name : Ruman Sarawer
#Student ID: 10146414


awk 'BEGIN { FS=" " ; OFS="\t" ; }                                              #declaring the field seperator as tab and space
    NR>1 {                                                                      #ignoring the first line
        if ( length($2) >= 8 && $2 ~ "[[:digit:]]" && $2 ~ "[[:upper:]]" )      #Validating the password section with the requirements
            print  $2 "\t - meets password strength requirements";              #If met, print this
        else
            print  $2 "\t - does not meet password strength requirements";      #if doesnot met the requirements, print this statement
        }' usrpwords.txt #source file
exit 0