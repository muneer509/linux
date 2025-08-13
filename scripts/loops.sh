#!/bin/bash

# for i in $(seq 1 100)
# do
#   echo $i
# done
ID=$(id -u)
if [ $ID -ne 0]
then
echo "Please install this script with root user access"
fi

