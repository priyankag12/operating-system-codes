#!/bin/bash

# Prompt the user to enter the range
read -p "Enter the starting number of the range: " start
read -p "Enter the ending number of the range: " end

echo "Prime numbers between $start and $end are:"

# Iterate through each number in the range
for (( num=$start; num<=$end; num++ )); do
    # Skip 0 and 1 as they are not prime numbers
    if [ $num -le 1 ]; then
        continue
    fi

    # Initialize flag to indicate if the number is prime
    is_prime=1

    # Check if the number is divisible by any number other than 1 and itself
    for (( divisor=2; divisor<=num/2; divisor++ )); do
        if [ $(( num % divisor )) -eq 0 ]; then
            is_prime=0
            break
        fi
    done

    # Print the prime number if it is prime
    if [ $is_prime -eq 1 ]; then
        echo $num
    fi
done
