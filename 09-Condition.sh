#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 10 ]
then
    echo "the given $NUMBER is greaterthen 10"
elif [ $NUMBER -eq 10 ]
    echo "The given $NUMBER is equal 10"
else
    echo "The given $NUMBER is lessthan 10"
fi