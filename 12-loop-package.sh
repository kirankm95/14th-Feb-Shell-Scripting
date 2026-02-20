#!/bin/bash

VAR1=$@
USER=$(id -u)
DATE=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$DATE"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


VALIDATE1(){
        yum list installed $1 &>> $LOGFILE
        if [ $? -eq 0 ]
        then
        echo "package $1 already installed"
        exit 1
        else
        echo "package $1 not installed, we are going to install it"
        fi
        }

VALIDATE2(){
    if [ $1 -eq 0 ]
    then
        echo -e "$G installation of $2 is success $N"
    else
        echo -e "$R installation of $2 is f...edup failed $N"
    fi
        }

echo "this $0 started executing at $DATE and will store logs into $LOGFILE" &>> $LOGFILE

if [ $USER -eq 0 ]
then
    echo -e "$G You are root user$N, hence we are procedding further"
else
    echo -e "$R You are not user$N, so exiting"
    exit 1
fi

echo "mentioned packages are $VAR1"

for i in $VAR1
do
VALIDATE1 ${i}
yum install $i &>> $LOGFILE
VALIDATE2 $? ${i}
done