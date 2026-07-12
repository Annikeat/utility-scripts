#!/bin/bash

# Check if user provided a file name
if [ $# -eq 0 ]; then
    echo "Error: Please provide a file name"
    echo "Usage: ./script.sh filename"
    exit 1
fi

FILE=$1

# Check if file exists
if [ ! -e "$FILE" ]; then
    echo "Error: File does not exist"
    exit 1
fi

# Change permission to 755
chmod 755 "$FILE"

echo "Permission changed to 755 for: $FILE"
