#!/bin/bash

COURSE="Devops from current script"

echo "Before calling other script, course: $COURSE"

echo "Process ID of current script: $$"

./16-Other-script.sh

echo "Process ID of current script: $$"