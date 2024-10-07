#!/bin/bash

COURSE="Devops from current script"

echo "Before calling other script, course: $COURSE"

echo "Process ID of current script: $$"

#./16-other-script.sh
source ./16-other-script.sh

echo "Before calling other script, course: $COURSE"