#!/bin/bash
#check the user has root access or not
USERID=$(id -u)
if [ $USERID != 0 ]
then
echo "You dont have Admin privilies to run this script, Please run with Admin access"
exit 1

fi
apt list mysql
if [ $? -ne 0 ]
then
echo "mysql not installed,going to install nginx"
apt install mysql -y
if [ $? -ne 0 ]
then 
echo "mysql installation is failure"
exit 1
else
echo "mysql installation is success"
fi
else
echo "mysql is already installed"

fi



