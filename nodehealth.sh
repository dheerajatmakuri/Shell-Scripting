#!/bin/bash

# Author: Dheeraj Atmakuri
# 7/4/2024
# This script executes the o/p of node health
#
# Version: v1
#

set -x    # debug mode
set -e    # exists the script when there is an error
set -o pipefail #shows if any command in the script fails it shows failure status
# set -exo pipefail can also be used instead of above three commands but its not a good practice

echo "prints disk space"
df -h

echo "prints memory"
free -g

echo "prints cpu"
nproc

ps -ef | grep "amazon" | aws -F" " '{print $2}'
