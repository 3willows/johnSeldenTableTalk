#!/bin/bash

# Define the text you want to add
text_to_add="<link rel="stylesheet" href="../page.css">"

# Navigate to the directory containing the files
cd html

# Loop through each file in the directory
for file in *; do
    # Check if the item is a file (not a directory)
    if [ -f "$file" ]; then
        # Add the text to the beginning of the file and save it to a temporary file
        echo -e "$text_to_add\n$(cat "$file")" > temp && mv temp "$file"
    fi
done
