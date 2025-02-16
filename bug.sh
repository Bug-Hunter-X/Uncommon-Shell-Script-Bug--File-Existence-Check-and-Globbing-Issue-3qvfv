#!/bin/bash

# This script attempts to process a file, but it fails to handle the case where the file doesn't exist.

file_to_process="my_file.txt"

# Attempt to process the file without checking for its existence.
if [ -f "$file_to_process" ]; then
    cat "$file_to_process"
else
    echo "Error: File not found"
fi

#Another potential error: Incorrect use of globbing
rm *.txt
rm *.log