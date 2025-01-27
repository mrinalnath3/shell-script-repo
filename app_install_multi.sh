#!/bin/bash

#This line is a comment. This script will allow the installation of applications based on the OS detection using if, elif, and else statements as a universal script.

echo "This script to install git on a Linux distribution"

echo “****************Installation is starting ******************”

# Setting up the variable upon execution it will detect the OS ID

OS=$(grep "^ID=" /etc/os-release | cut -d'=' -f2 | tr -d '"')

if [ "$OS" == "ubuntu" ]
then
echo "This is ubuntu operating system, installing git….."

sudo apt install apache2 -y

elif [ "$OS" == "centos" ]
then

echo "his is Centos OS, installing the git…….."
yum install httpd -y

elif [ "$OS" == "rhel" ]
then
echo "This is not Ubuntu or Centos"
echo "This is Red Hat Enterprise Linux"
sudo dnf install git -y
else
echo "OS distribution not matching hence not installing"

fi
