#!/bin/bash

# Initialize variable for the number of rows
row=1

# Using while loop to print the upper half of the pattern
while [ $row -le 5 ]; do
    space=1
    while [ $space -le $((5-row)) ]; do
        echo -n " "
        ((space++))
    done
    star=1
    while [ $star -le $row ]; do
        echo -n "*"
        ((star++))
    done
    echo ""
    ((row++))
done

# Using while loop to print the lower half of the pattern
row=4
while [ $row -ge 1 ]; do
    space=1
    while [ $space -le $((5-row)) ]; do
        echo -n " "
        ((space++))
    done
    star=1
    while [ $star -le $row ]; do
        echo -n "*"
        ((star++))
    done
    echo ""
    ((row--))
done
