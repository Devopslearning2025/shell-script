#!/bin/bash

NUM=$1

if [ $NUM -gt 10 ];
then
    echo "the given $NUM is greaterthen 10"
else
    echo "The given $NUM is lessthan 10"
fi