#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title text-insert
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "Thought" }

# Documentation:
# @raycast.author huyixi
# @raycast.authorURL https://raycast.com/huyixi

# IMPORTANT: Please replace the file_path with your own file path before running this script.
file_path="/Users/huyixi/i/huyixi.wiki/docs/thoughts.md"

if [[ -z "$file_path" ]]; then
  echo "Error: file_path is not set. Please set the file_path variable at the top of this script."
  exit 1
fi

thought="$1"

current_datetime=$(date +"%Y-%m-%d %H:%M:%S")

formatted_thought="- $thought. $current_datetime"

if [ ! -f "$file_path" ]; then
  touch "$file_path"
fi

echo "$formatted_thought" >> "$file_path"

echo "Quote inserted into $file_path"
