#!/bin/bash

# Prompt the user to enter a number
read -p "Enter a number to find its factorial: " num

# Check if the input is a non-negative integer
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Error: Input must be a non-negative integer."
    exit 1
fi

# Initialize factorial to 1
factorial=1

# Calculate the factorial
for (( i=1; i<=num; i++ )); do
    factorial=$(( factorial * i ))
done

# Print the factorial
echo "Factorial of $num is $factorial"
