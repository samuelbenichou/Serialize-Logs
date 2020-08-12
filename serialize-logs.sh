#!/bin/bash
#
# Written by: Samuel Benichou & Yzhar Chernov
# November 4th, 2019
# Run this script in your Linux shell
# It will sort through all your folder with log extension
# the output of each file
# based on the date they were written
#

path=$1
find $path -name  "*.log"| sort | xargs sort -z -m -s -k 1,1
# Check if log extension folder exist in the given path
if ls ${path}/*.log &>/dev/null 
then
    exit 0
fi


