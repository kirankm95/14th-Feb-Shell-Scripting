#!/bin/bash

VAR1=$1
USER=$(id -u)
DATE=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$DATE"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

echo "this $0 started executing at $DATE and will store logs into $LOGFILE"

if [ $USER -eq 0 ]
then
    echo -e "$G You are root user$N, hence we are procedding further"
else
    echo "You are not user, so exiting"
    exit 1
fi

yum install ${VAR1} -y