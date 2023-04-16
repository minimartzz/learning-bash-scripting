#!bin/bash

# Exit code for a package that doesn't exist
package=htop

sudo apt install $package >> package_install_results.log # redirect the output to file

if [ $? -eq 0 ]
then
  echo "The installation of $package was successful"
  location=$(which $package)
  echo "The new command is available here: $location"
else
  echo "Command failed to install" >> package_install_failure.log


# Controlling Exit codes
echo "Something was here"
exit 199
echo $?

