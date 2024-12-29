#!/bin/bash

# Question1: Write a shell script to find and count the number of occurrences of the letter "s" in the string "mississippi".

# Define the string
string="mississippi"

# Use a here string (<<<) to provide the value of $x as input to grep
# The grep command with the -o option finds all occurrences of the letter 's' in $x
# Each occurrence of 's' is output on a new line
# The output is then piped (|) to wc, which counts the lines (wc -l)
# The number of lines counted by wc is the number of occurrences of 's' in $x
grep -o "s" <<< "$x" | wc -l

# Question2: Write a shell script to print numbers from 1 to 10 that are divisible by 3 or 5, but not by 15.

for i in {1..100}; do
if ( [ `expr $i % 3` == 0 ] || [ `expr $i % 5` == 0 ] && [ `expr $i % 15` != 0 ] );
then
    echo $i
fi;
done

#Question3 how to debug your shell script

set -x

#Question4 what is crontab in linux? an example?
Alarm/ automation set at a specific time and executes the given instructions automatically give you output in file / s3 bucket

#Question5 how to opne file in read only mode?

vim -r test.sh
#-r helps to open in read only mode


#Question5: diff btn doft and hard link?
##when we create a file it usually saves in memory, using hard link we can create a copy although the original file is deleted from the memory
#A hard link points directly to the data on the disk and shares the same inode as the original file. This means it creates an exact copy that remains valid even if the original file is deleted, but it is limited to the same filesystem.
#soft link (or symbolic link) points to the pathname of the original file, has a different inode, can cross different filesystems, but becomes invalid if the original file is deleted.

## Question6: What are some disadvantages of Shell scripting? # Shell scripting has the following disadvantages: 
# - Errors are frequent and costly, and a single error can alter the command.
# - The execution speed is slow. # - Bugs or inadequacies in the language's syntax or implementation. 
# - Large, complex tasks aren't well suited to it. # - Contrary to other scripting languages, etc., it provides a minimal data structure. 
# - Every time a shell command is executed, a new process is launched.
# Managing concurrency and parallelism is difficult and error-prone.
# Shell scripts can become difficult to read and maintain, especially as they grow in complexity.

#Question6 set -u commmand
# The set -u command in shell scripting is used to treat unset variables and parameters as errors. When you enable this option, any attempt to use an unset variable will cause the script to exit with an error.

#Question7 is bash dynamically typed or statically typed
# Bash is a dynamically typed language. In dynamically typed languages, variables do not require an explicit declaration of their type. Instead, the type is determined at runtime based on the value assigned to the variable.

# Question8 expalin network troubleshooting utility

#traceroute can be used fot network debugging traceroute <url>

#Question9 sort list of names in a file
#To sort a list of names in a file using a shell script, you can use the sort command, which is a built-in command in Unix-based systems. Here's a simple script that reads a file containing names, sorts them, and outputs the sorted list.

#Question10 how will you manage logs of a system that generate huge logs files everyday
#linux admin manages lot of apps, it if its realtime customer facing application, it genertes ns of logs, disk gets increasing
#logrotate(gzip, zip) we can efficiently manage application logs







