#!/bin/bash

USERID=$(id -u)

echo "USERID IS $USERID "

if [ $USERID -ne 0]
then 
    echo "please run this script with root access"
else 
    echo "you are the Super User"

fi