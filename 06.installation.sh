#!/bin/bash

USERID=$(id -u)

if [ USERID -ne 0 ];then 
echo "run this as root"
exit 1 
fi

VALIDATE(){
    if [ $1 ne 0 ] ; then
    echo "error while installing $2"
    else 
    echo "installed successfully $2"
    fi
}


dnf install mysql -y
VALIDATE $? "MYSQL"


dnf install python3 -y
VALIDATE $? "PYTHON3"


dnf install nginx -y
VALIDATE $? "NGINX"