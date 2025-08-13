#!/bin/bash

# for i in $(seq 1 100)
# do
#   echo $i
# done
ID=$(id -u)
if [ $ID -ne 0 ]
then
echo "Please install this script with root user access"
fi
VALIDATE()
if [ $1 -ne 0 ]
  then
    echo "$2 id FAILD"
  else
    echo "$2 installation is success"
fi  

for $package in $@
do 
    apt list installed @package
    if [ $? -ne 0 ]
    then
        echo "$package not installed.."
        apt install @package -y
        VALIDATE $? "installing $package"
    else
        echo "$package already installed"
    fi

