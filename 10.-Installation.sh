#!/bin/bash
USER=$(id -u)

if [ $USER -eq 0]
then
    echo "you are with root user"
    exit 1
else
    echo "please run with root user"
fi

dnf install mysql -y