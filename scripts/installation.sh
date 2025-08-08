#!/bin/bash
#check the user has root access or not
USERID=$(id -u)
if [ $USERID != 0 ]
then
echo "You dont have Admin privilies to run this script, Please run with Admin access"
exit 1

fi
apt list nginx
if [ $? -ne 0 ]
then
echo "nginx not installed,going to install nginx"
apt install nginx -y
if [ $? -ne 0 ]
then 
echo "nginx installation is failure"
exit 1
else
echo "nginx installation is success"
fi
else
echo "nginx is already installed"

fi



