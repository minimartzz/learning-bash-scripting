#!/bin/bash

# Counting 
myvar=1

while [ $myvar -le 10 ]
do
  echo $myvar
  myvar=$(( $myvar + 1 ))
  sleep 0.5
done

# Checking if a file exists
myfile="some_file"

while [ ! -f "some_file" ]
do
  echo "unable to find some_file as of $(date)"
  sleep 5
done

echo "file located"