#!/bin/bash

# Prompt the user to enter the two numbers
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

# Find the greatest common divisor (GCD) using Euclid's algorithm
a=$num1
b=$num2
while [ $b -ne 0 ]; do
    temp=$b
    b=$(( a % b ))
    a=$temp
done
gcd=$a

# Calculate the least common multiple (LCM)
lcm=$(( num1 * num2 / gcd ))

# Print the LCM
echo "LCM of $num1 and $num2 is $lcm"
