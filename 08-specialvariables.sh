#!/bin/bash

echo "all variables : $@"
echo "date : $DATE"
echo "noumber of variable passed : $#"
echo "script name : $0"
echo "current working directory : $PWD"
echo "home directory of current user $HOME"
echo "which user is running : $USER"
echo "hostname : $HOSTNAME"
echo "process id of current shell : $$"
sleep 60 &