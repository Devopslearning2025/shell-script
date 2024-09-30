#!/bin/bash
USER=$(id -u)
TIME=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo $0|cut -d "." -f1)
LOG=/tmp/$SCRIPTNAME-$TIME.log
R="\e[33m"
Y="\e[33m"
G="\e[32m"
N="\e[0m"

if [ $USER -ne 0 ]
then
    echo "Please run this script with root access"
    exit 1 #manually exit if error comes.
else
    echo "You are super user"
fi

echo "all packages: $@"
VALIDATE (){
if [ $1 -ne 0 ]
then
    echo -e "$2... installation is  $R failure $N"
    exit 1
else
    echo -e "$2... installation $G success $N"
fi
}

for i in $@
do
    echo "package to install $i"
    dnf list installed $i &>> $LOG
    if [ $? -eq 0 ]
    then
        echo -e "$i already installed ...$Y skipping $N"
    else
        dnf install $i -y &>> $LOG
        VALIDATE $? "The $i"
    fi
done