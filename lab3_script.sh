#!/bin/bash
# Authors : Brehn Heil & Ted Conklin
# Date: 2/7/2020

#Problem 1 Code:
#No explanation needed
echo "Enter a file name: "
read fileName
echo "Enter a regex: "
read regex

#Problem 2 Code:
#No explanation needed
egrep $regex $fileName

#Problem 3 Code:
echo "Number of phone numbers: "
egrep -c '[0-9]-+[0-9]+-+' $fileName

#problem 4 code:
echo "Email count: "
egrep -c '@' $fileName

echo "Phone numbers with 303 area code: "
egrep -o "303-+[0-9]+" $fileName

echo "make new file for emails @geocities.com"
grep "@geocities.com" $fileName >> "email_results.txt"

