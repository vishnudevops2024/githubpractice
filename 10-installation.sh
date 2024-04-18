#!/bin/bash

USERID=$(id -u)

echo "USERID IS $USERID "

if [ $USERID -ne 0 ]  
then 
    echo "please run this script with root access"
    exit 1
else 
    echo "you are the Super User"

fi

dnf install mysql -y

if [$? -ne 0]
then
    echo "installation of mysql ...FAILURE"
    exit 1

else 
    echo "mysql is installing ....."
    echo "installation of mysql.. SUCCESS"
    exit 0
fi

dnf install git -y 

if [ $? -ne 0 ]
then 
    echo "installation of Git .. FAILURE"
    exit 1
else
    echo "installation of Git.. SUCCESS"
fi

