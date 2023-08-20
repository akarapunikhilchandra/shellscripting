#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
   echo "ERROR :: Please run with root access"
fi

yum install mysqll -y

if [ $? -ne 0 ]
then 
   echo "installation is error"

else 
   echo "Installation is success or already installed"
fi 