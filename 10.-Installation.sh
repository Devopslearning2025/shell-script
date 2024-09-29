#!/bin/bash
USER=$(id -u)

if [ $USER -ne 0 ]
then
    echo "Please run this script with root access"
    exit 1 #manually exit if error comes.
else
    echo "You are super user"
fi

dnf install mysql -yy

if [ $? -ne 0 ]
then
    echo "The installation if mysql is falure"
    exit 1
else
    echo "mysql installation success"
fi

dnf install zip -y