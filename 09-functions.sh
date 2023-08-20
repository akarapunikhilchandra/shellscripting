#!/bin/bash

USERID=$(id -u)
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/opt/$SCRIPT_NAME-$DATE.log
R="\e[31m"
G="\e[32m"
N="\e[0m"
VALIDATE (){
    if [ $1 -ne 0 ] 

then 
    echo -e "$2 ..$RFAILURE$N"
    exit 1
else
    echo -e "$2 ..$GSUCCESS$N"
fi
}
USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
   echo "ERROR :: Please run with root access"
   exit 1
fi

yum install mysql -y &>>$LOGFILE
VALIDATE $? "Installing MYSQL" 
yum install postfix -y &>>$LOGFILE
VALIDATE $? "Installing postfix"
