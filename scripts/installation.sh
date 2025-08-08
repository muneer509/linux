#!/bin/bash
#check the user has root access or not
USERID=$(id -u)
if [ $USERID == 0 ]
then
echo "You dont have Admin privilies"
else
echo " You have admin access"
fi``
