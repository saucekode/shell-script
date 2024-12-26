#!/bin/bash

current_directory=$(pwd)

disk_usage=$(df -h $current_directory)

echo $disk_usage