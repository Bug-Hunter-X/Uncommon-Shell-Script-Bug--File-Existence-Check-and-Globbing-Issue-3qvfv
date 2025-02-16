#!/bin/bash

# Improved script with robust file existence check and safer file removal

file_to_process="my_file.txt"

# Check if the file exists before processing
if [ -f "$file_to_process" ]; then
    cat "$file_to_process"
else
    echo "Error: File '$file_to_process' not found"
exit 1 # Exit with an error code
fi

# Safer file removal using explicit file names
rm -f my_file_to_delete.txt # Only remove this specific file
rm -f another_file_to_delete.log # Only remove this specific file