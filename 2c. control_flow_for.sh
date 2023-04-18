#!/bin/bash

# Example of for loop
for current_number in {1..10}
do
  echo $current_number
  sleep 0.5
done

echo "This is outside the loop"

# tarball zipping
for file in logfiles/*.log
do
  tar -czvf $file.tar.gz $file
done