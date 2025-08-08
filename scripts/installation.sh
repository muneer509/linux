#!/bin/bash
#check the user has root access or not
USERID=$(id -u)
if [ $USERID != 0 ]
then
echo "You dont have Admin privilies to run this script, Please run with Admin access"
exit 1

fi
apt list nginx
if [ $? != 0 ]
then
echo "nginx not installed"
fi
