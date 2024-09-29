#!/bin/bash
USER=$(id -u)
SOFT=( 'mysql' 'zip' 'git')

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
    echo "$2 installation is falure"
    exit 1
else
    echo "$2 installation success"
fi
}

for i in "$SOFT"
do 
    dnf install $i -y
    VALIDATE $? "The $i"
done