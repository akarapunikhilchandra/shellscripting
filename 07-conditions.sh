#!/bin/bash

NUMBER=$1
if [ $NUMBER -ge 10 ]
then 
    echo "$NUMBER is greater than 10"
else
    echo "$NUMBER is not greater than 10"
fi