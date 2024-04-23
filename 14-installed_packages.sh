#!/bin/bash


USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "please run the script with root user"

else    
    echo "you ar the sup[er user"
fi