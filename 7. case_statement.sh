#!/bin/bash

finished=0

while [ $finished -ne 1 ]
do
  echo "What is your favourite Linux distribution"

  echo "1 - Arch"
  echo "2 - CentOS"
  echo "3 - Mint"
  echo "4 - Debian"
  echo "5 - Ubuntu"
  echo "6 - Something else..."

  read distro;

  case $distro in
    1) echo "Arch is a roling release";;
    2) echo "CentOS is popular on servers";;
    3) echo "Mint is popular on desktops and laptops";;
    4) echo "Debian is a community distribution";;
    5) echo "Ubuntu is popular on both servers and computers";;
    6) echo "There are many distributions out there";;
    7) finished=1
       echo "leaving the loop";;
    *) echo "you didn't enter an appropriate choice"
  esac
done

echo "Thank you for using this script"