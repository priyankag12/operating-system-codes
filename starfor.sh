#!/bin/bash

# Using for loop to print the upper half of the pattern
for (( i=1; i<=5; i++ )); do
    for (( j=1; j<=5-i; j++ )); do
        echo -n " "
    done
    for (( k=1; k<=i; k++ )); do
        echo -n "*"
    done
    echo ""
done

# Using for loop to print the lower half of the pattern
for (( i=4; i>=1; i-- )); do
    for (( j=1; j<=5-i; j++ )); do
        echo -n " "
    done
    for (( k=1; k<=i; k++ )); do
        echo -n "*"
    done
    echo ""
done
