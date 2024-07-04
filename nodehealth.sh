#!/bin/bash

# Author: Dheeraj Atmakuri
# 7/4/2024
# This script executes the o/p of node health
#
# Version: v1
#

set -x


echo "prints disk space"
df -h

echo "prints memory"
free -g

echo "prints cpu"
nproc
