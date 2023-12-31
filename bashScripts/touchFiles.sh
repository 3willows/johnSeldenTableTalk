#!/bin/bash

# Directory path where the files will be created
directory="filenames"

# File containing the list of topics
file_path="names.txt"

# Check if the directory exists or create it if it doesn't
if [ ! -d "$directory" ]; then
    mkdir -p "$directory"
fi

# Check if the topics file exists
if [ -f "$file_path" ]; then
    # Read the file line by line and echo each line
    while IFS= read -r line; do
        touch "$directory/$line"
    done < "$file_path"
else
    echo "File not found."
fi