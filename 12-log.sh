#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%Y-%m-%d %H:%M:%S)
##echo "$TIMESTAMP"
Script_Name=$(echo "$0" | cut -d "." -f1)
echo "$Script_Name"
LOGFILE=/tmp/$Script_Name-$TIMESTAMP.log
echo "$LOGFILE"

VALIDATE()
{
    if [ $? -ne 0 ]
    then 
        echo "$2 .. FAILURE"
        exit 1
    else    
        echo "$2.. SUCCESS"
    fi

}

    if [ $USERID -ne 0 ]
        then
            echo "please run with root user"
            exit 1
        else
            echo "you are super user"
        fi

dnf install mysql -y
VALIDATE $? "Installing MQSQL" &>>$LOGFILE

dnf install git -y
VALIDATE $? "installing Git" &>>$LOGFILE