#!/bin/bash

release_file=/etc/os-release
# add logfiles
logfile=/var/log/updater.log
errorlog=/var/log/updater_errors.log

# Functions
check_exit_status() {
  if [ $? -ne 0 ]
  then
    echo "Error occurred, please check the $errorlog file."
  fi
}

if grep -q "Arch" $release_file
then
  # The host is based on Arch, run the pacman update command
  sudo pacman -Syu 1>> $logfile 2>> $errorlog
  check_exit_status
fi

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then 
  # The host is based on Debian or Ubuntu
  # Run the apt version of the command
  sudo apt update 1>> $logfile 2>> $errorlog
  check_exit_status

  sudo apt dist-update -y
  check_exit_status
fi