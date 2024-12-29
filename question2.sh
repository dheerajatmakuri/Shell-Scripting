#!/bin/bash

# Question: Write a shell script to print numbers from 1 to 10 that are divisible by 3 or 5, but not by 15.

for i in {1..100}; do
if ( [ `expr $i % 3` == 0 ] || [ `expr $i % 5` == 0 ] && [ `expr $i % 15` != 0 ] );
then
    echo $i
fi;
done
