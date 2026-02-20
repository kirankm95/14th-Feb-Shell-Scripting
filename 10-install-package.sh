#!/bin/bash

VAR1=$1
USER=$(id -u)

if [ $USER -eq 0 ]
then
    echo "You are root user, hence we are procedding further"
else
    echo "You are not user, so exiting"
    exit 1
fi

yum install ${VAR1} -y