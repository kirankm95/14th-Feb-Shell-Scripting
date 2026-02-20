#!/bin/bash

VAR1=$1
USER=$(id -u)
DATE=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$DATE"

this $0 started executing at $DATE and will store logs into $LOGFILE

if [ $USER -eq 0 ]
then
    echo "You are root user, hence we are procedding further"
else
    echo "You are not user, so exiting"
    exit 1
fi

yum install ${VAR1} -y