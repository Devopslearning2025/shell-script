#!/bin/bash

DISK_USAGE=$(df -hT|grep dev)
DISK_THRESHOLD=5
MESSAGE=""

while IFS=read -r line
do
    USAGE=$(echo $line |awk -F " " '{print $6F}' |cut -d "%" f1)
    FOLDER=$(echi $line|awk -F "" '{print $F}')
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
        MESSAGE+="$FOLDER is more than $DISK_THRESHOLD and the current usage is: $USAGE\n"
    done

done <<< $DISK_USAGE

echo -e "Message: $MESSAGE"