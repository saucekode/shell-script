#!/bin/bash

current_time=$(date +"%H%M%S")
afternoon_time_cutoff=120000
evening_time_cutoff=160000

if [ "$current_time" -lt "$afternoon_time_cutoff" ]; then
    echo "Good morning, user"
elif [ "$current_time" -ge "$afternoon_time_cutoff" ] && [ "$current_time" -lt "$evening_time_cutoff" ]; then
    echo "Good afternoon, user"
else
    echo "Good evening, user"
fi