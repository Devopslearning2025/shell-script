#!/bin/bash
USER=$(id -u)
TIME=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo $0|cut -d "." -f1)
LOG=/tmp/$SCRIPTNAME-$TIME.log
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
NORMAL="\e[0m"

echo "Script started at: $TIME "

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
    echo -e "$2 ...$RED installation is failure $NORMAL"
    exit 1
else
    echo -e "$2..$GREEN  installation is success $NORMAL"
fi
}

dnf install mysql -y &>> $LOG
VALIDATE $? "The mysql"

dnf install zip -y &>> $LOG
VALIDATE $? "The zip"

dnf install wrong -y &>> $LOG
VALIDATE $? "The wrong"