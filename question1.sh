#!/bin/bash

# Question: Write a shell script to find and count the number of occurrences of the letter "s" in the string "mississippi".

# Define the string
string="mississippi"

# Use a here string (<<<) to provide the value of $x as input to grep
# The grep command with the -o option finds all occurrences of the letter 's' in $x
# Each occurrence of 's' is output on a new line
# The output is then piped (|) to wc, which counts the lines (wc -l)
# The number of lines counted by wc is the number of occurrences of 's' in $x
grep -o "s" <<< "$x" | wc -l


