#!/bin/bash

echo "Please enter the username: "
# read USERNAME # USERNAME is a variable and we can see while typing
read -s USERNAME # USERNAME is a variable and we cann't see while typing

echo "Enter the password: "
# read PASSWORD #PASSWORD is avariable and we can see while typing
read -s PASSWORD #PASSWORD is avariable and we cann't see while typing

read -p "Enter the site: " SITE #SITE is avariable and we can see while typing but not using the echo

echo "the user name is: $USERNAME and the password is: $PASSWORD and the site is $SITE"