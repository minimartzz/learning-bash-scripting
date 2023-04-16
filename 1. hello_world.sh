#!/bin/bash

echo "Hello World"

echo "My current working directory is:"
pwd

# Variables
myname="Martin"
myage=26

echo "Hello, my name is $myname"
echo "I'm $myage years old."

## Storing command outputs in a variable
files=$(ls)
echo $files

date=$(date)
echo "$myname commited to branc main on $date"
echo "Username: $USERNAME"

# Math
expr 30 + 10
expr 30 - 10
expr 30 / 10
expr 30 \* 10

mynum1=100
mynum2=200
expr $mynum1 + $mynum2
