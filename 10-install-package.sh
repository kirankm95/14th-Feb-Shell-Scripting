#!/bin/bash

VAR1=$1
USER=$(id -u)
DATE=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$DATE"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
    if [ $1 -eq 0 ]
    then
        echo "installation of $2 is success"
    else
        echo "installation of $2 is f...edup failed"
    fi
        }

echo "this $0 started executing at $DATE and will store logs into $LOGFILE"

if [ $USER -eq 0 ]
then
    echo -e "$GYou are root user$N, hence we are procedding further"
else
    echo -e "$RYou are not user$N, so exiting"
    exit 1
fi

yum install ${VAR1} -y
VALIDATE $? ${VAR1}