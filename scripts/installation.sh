#!/bin/bash
#check the user has root access or not
USERID=$(id -u)
if [ $USERID != 0 ]
then
echo "You dont have Admin privilies to run this script, Please run with Admin access"

fi
apt list git
if [ $? != 0 ]
then
echo "git not installed"
fi
