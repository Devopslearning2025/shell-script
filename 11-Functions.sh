#!/bin/bash
USER=$(id -u)
TIME=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo $0|cut -d "." -f1)
LOG=/tmp/$SCRIPTNAME-$TIME.log
RED=\e[31m
GREEN=\e[32
YELLOW=\e[33

if [ $USER -ne 0 ]
then
    echo "Please run this script with root access"
    exit 1 #manually exit if error comes.
else
    echo "You are super user" &>> $LOG
fi

VALIDATE (){
if [ $1 -ne 0 ]
then
    echo -e "$RED $2 installation is falure"
    exit 1
else
    echo -e "$GREEN $2 installation is success"
fi
}

dnf install mysql -y &>> $LOG
VALIDATE $? "The mysql"

dnf install zip -y &>> $LOG
VALIDATE $? "The zip"