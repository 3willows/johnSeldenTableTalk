#!/bin/bash

# File containing the list of topics
topics_file="contents.txt"

# Check if the topics file exists
if [ -f "$topics_file" ]; then
  # Read topics from the file and loop through each line
  while IFS= read -r topic; do
    # Split the line by comma and extract the topic and page number
    IFS=', ' read -ra split_topic <<< "$topic"
    page_number="${split_topic[-1]}"  # Extract the page number
    topic_name="${split_topic[*]:0:${#split_topic[@]}-1}"  # Extract the topic name without the page number
    # Replace spaces with hyphens and convert to lowercase for the anchor link
    anchor_link=$(echo "$topic_name" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')
    # Output the li element with the anchor link and topic name
    echo "<li><a href=\"$anchor_link.html\" target=\"_blank\">$topic</a></li>" >> formatted_Title.html
  done < "$topics_file"
  echo "Formatted content has been saved to formatted_Title.html"
else
  echo "Topics file not found."
fi
