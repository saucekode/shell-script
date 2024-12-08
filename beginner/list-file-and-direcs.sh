#!/bin/bash

current_directory=$(pwd)

if [ "$(ls -A "$current_directory")" ]; then
    directory_content=$(ls -l -a $current_directory)
    echo $directory_content
else 
    echo "Working directory has no content"
fi
