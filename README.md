# Uncommon Shell Script Bug: File Existence Check and Globbing Issue

This repository demonstrates an uncommon bug in a shell script related to improper file existence checks and the potential dangers of using globbing without caution.

The `bug.sh` script attempts to process a file, `my_file.txt`, but lacks a robust check to ensure that the file exists. If the file is not found, the script will fail without a clear error message. 

The script also incorrectly uses globbing when removing files. `rm *.txt` and `rm *.log` will remove ALL files matching the pattern in the current directory, which can lead to accidental data loss. 

The solution script, `bugSolution.sh`, provides a corrected and safer approach.