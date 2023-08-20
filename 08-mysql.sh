#!/bin/bash

USERID=$(id -u)
VALIDATE (){
    if [ $1 -ne 0 ] 

then 
    echo "INSTALLATION .. FAILURE"
    exit 1
else
    echo "INSTALLATION .. SUCCESS"
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
