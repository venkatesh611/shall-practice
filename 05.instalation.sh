#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ] ; then 
echo "please run this command as root"
exit 1
fi

dnf install mysql -y

if [ $? -ne 0]; then 
echo "error installing my sql failure"
exit 1
else
echo installed sucessfully
fi
