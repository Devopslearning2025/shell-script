#!/bin/bash

set -e

if [ $USER -ne 0 ]
then
    echo "Please run this script with root access"
    exit 1 #manually exit if error comes.
else
    echo "You are super user"
fi

dnf install nginzz -y

echo "script is proceeding"
dnf install gzip -y