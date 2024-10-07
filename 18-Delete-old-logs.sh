#!/bin/bash

SOURCE_DIR="/tmp/app-logs"
R="\e[31m"
N="\e[0m"
G="\e[32m"
Y="\e[33m"

#check the SOURCE_DIR is exists

if [ -d $SOURCE_DIR ];then
    echo -e "$G $SOURCE_DIR folder exists $N"
else
    echo -e  "$R please make sure $SOURCE_DIR folder exists $N"
    exit 1
fi

FILES=$(find $SOURCE_DIR -name *.log -mtime +4)

echo "$FILES"

#while IFS= read -r line
while read line
do
    echo "deleting file is: $line"
    #rm -rf $line
done  < $FILES