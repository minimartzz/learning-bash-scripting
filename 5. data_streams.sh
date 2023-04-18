#!/bin/bash

# Find files inside logfiles
# 1> - send all stdout to find_results.txt
# 2> - send all stderr to find_errors.txt
find /logfiles -type f 1> find_results.txt 2> find_errors.txt

echo "Please enter your name:"
read myname
echo "Your name is $myname"