#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
   echo "ERROR :: Please run with root access"
fi

yum install mysql -y

if [ $? -ne 0 ]
then 
   echo "installation is error"
   exit 1
else 
   echo "Installation is success"
fi 

yum install postflix -y
if [ $? -ne 0 ]
then 
   echo "installation is error"
   exit 1
else 
   echo "Installation is success"
fi