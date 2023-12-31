#!/bin/bash

# Source directory containing text files
source_dir="/path/to/source_directory"

# Destination directory to save HTML files
destination_dir="/path/to/destination_directory"

# Check if the source directory exists
if [ -d "$source_dir" ]; then
    # Check if the destination directory exists or create it if it doesn't
    if [ ! -d "$destination_dir" ]; then
        mkdir -p "$destination_dir"
    fi

    # Loop through each text file in the source directory
    for file in "$source_dir"/*.txt; do
        # Get the filename without the extension
        filename=$(basename -- "$file")
        filename_no_ext="${filename%.*}"

        # Convert text file to HTML using pandoc and save to the destination directory
        pandoc "$file" -o "$destination_dir/$filename_no_ext.html"
    done

    echo "Conversion completed."
else
    echo "Source directory not found."
fi
