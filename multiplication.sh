#!/bin/bash

# Prompt the user to enter an integer
read -p "Enter an integer: " num

echo "Multiplication table of $num:"

# Iterate through numbers from 1 to 10 to generate the multiplication table
for (( i=1; i<=10; i++ )); do
    result=$(( num * i ))
    echo "$num x $i = $result"
done
