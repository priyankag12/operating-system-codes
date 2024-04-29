#!/bin/bash

echo "Enter a string"
read string1
echo "Enter character to find in the string"
read ch

len=${#string1}

for ((i=0; i<len; i+=2))
do
 echo "${string1:i:1}"
done

reverse=$(echo "$string1"|rev)
if [ "$string1" = "$reverse" ]
then
echo "It is a palindrome"
else
echo "It is not a palindrome"
fi 

reversed_string=" "
for((i=len-1; i>=0; i--))
do 
 reversed_string="${reversed_string}${string1:$i:1}"
done

echo "Reversed string is $reversed_string"

count=$(grep -o "$ch" <<< "$string1"|wc -l)

echo "The character $ch occurs $count times in the string"
