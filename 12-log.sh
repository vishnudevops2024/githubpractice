#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S:")
echo "$TIMESTAMP"

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
VALIDATE $? "Installing MQSQL"

dnf install git -y
VALIDATE $? "installing Git"