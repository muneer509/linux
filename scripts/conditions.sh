#!/bin/bash
day=$(date +%A)
if [ $day != "Saturday" || "Sunday" ]
then
echo "Please attend the DEVOPS clas"
else
echo "Please practice Shell"
fi
