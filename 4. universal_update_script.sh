#!/bin/bash

release_file=/etc/os-release
# add logfiles
logfile=/var/log/updater/log
errorlog=/var/log/updater_errors.log

if grep -q "Arch" $release_file
then
  # The host is based on Arch, run the pacman update command
  sudo pacman -Syu 1>> $logfile 2>> $errorlog
  if [ $? -ne 0]
  then
    echo "An error has occurred, please check $errorlog file."

fi

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then 
  # The host is based on Debian or Ubuntu
  # Run the apt version of the command
  sudo apt update
  sudo apt dist-update -y
fi