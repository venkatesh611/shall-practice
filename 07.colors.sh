#!/bin/bash
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ USERID -ne 0 ] ; then
echo -e "$R ERROR:: please run this commnad as root user $N"
fi

VALIDATE(){
    if [ $1 -ne 0 ] ; then
    echo -e "$R ERROR:: $2 not installed successfully $N"
    exit 1
    else
     echo -e "$G SUCESS:: $2 installed successfully $N"
    fi
}

dnf list installed mysql
if [ $? -ne 0 ] ; then
dnf install mysql
VALIDATE $? "MYSQL"
else
echo -e"$y mysql already exist $N"
fi

dnf list installed nginx
if [$? -ne 0 ] ; then
dnf install nginx
VALIDATE $? "NGINX"
else
echo -e "$Y nginx already installed $N"
fi

dnf list installed python3
if [ $? -ne 0 ] ; then
dnf install python3 -y
VALIDATE $? "PYTHON3"
else
echo -e "$Y nginx already installed $N"
fi

