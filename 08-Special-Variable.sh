#!/bin/bash

echo "All Variables: $@"
echo "Number of baliables passed: $#"
echo "Script name: $0"
echo "Present working dirtectory: $PWD"
echo "Home directory of the current user: $HOME"
echo "which user is running this script: $USER"
echo "Host name of the server: $HOSTNAME"
echo "Process ID of the current shell script: $$"
sleep 60 &
echo "Process ID of the last background command: $!"