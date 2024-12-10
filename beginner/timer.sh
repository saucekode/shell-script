#!/bin/bash

countdown=$1
delay=$2

if [ -z $countdown ] || [ -z $delay ]; then
    echo "Provide a number for countdown and a delay time"
    exit 1
else
    for i in $( seq 1 $countdown); do
        sleep $delay
        echo "Count is - $i"
    done
fi
