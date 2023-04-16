#!/bin/bash

# IF Statements
mynum=200

if [ $mynum -eq 200 ]
then
  echo "The condition is true."
else
  echo "The variable does not equal 200."
fi

## checking files
if [ -f ./hello_world.sh ]
then
  echo "The hello_world script is in this directory."
else
  echo "Script not found."
fi

## combining with WHICH command
command=htop

if command -v $command
then
  echo "$command is available, let's run it..."
else
  echo "$command is NOT available, installing it..."
  sudo apt update && sudo apt install -y $command
fi
$command
