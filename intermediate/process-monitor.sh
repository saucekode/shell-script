#!/bin/bash


process_name=$1

if ps aux | grep -v grep | grep -q $process_name; then
    if pgrep -fl $process_name > /dev/null; then
        echo "Process '$process_name' is running"
    else 
        echo "Process is not running"
    fi
else
    echo "Process does not exist"
fi


