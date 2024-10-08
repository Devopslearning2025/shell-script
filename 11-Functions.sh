#!/bin/bash
USER=$(id -u)
TIME=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo $0|cut -d "." -f1)
LOG=/tmp/$SCRIPTNAME-$TIME.log

if [ $USER -ne 0 ]
then
    echo "Please run this script with root access"
    exit 1 #manually exit if error comes.
else
    echo "You are super user"
fi

VALIDATE (){
if [ $1 -ne 0 ]
then
    echo "$2 installation is failure"
    exit 1
else
    echo " $2 installation is success"
fi
}

dnf install mysql -y &>> $LOG
VALIDATE $? "The mysql"

dnf install zip -y &>> $LOG
VALIDATE $? "The zip"