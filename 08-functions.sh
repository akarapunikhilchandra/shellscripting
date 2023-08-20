#!/bin/bash

USERID=$(id -u)
VALIDATE (){
    if [ $1 -ne 0 ] 

then 
    echo "$2 .. FAILURE"
    exit 1
else
    echo "$2 .. SUCCESS"
fi
}
if [ $USERID -ne 0 ]
then 
   echo "ERROR :: Please run with root access"
   exit 1
fi

yum install mysql -y
VALIDATE $? "Installing MYSQL" 
yum install postfix -y
VALIDATE $? "Installing postfix"
