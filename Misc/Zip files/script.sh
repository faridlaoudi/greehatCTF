#!/bin/bash

# Start with the initial zip file
current_zip="1000.zip"

# Loop through the sequence
for i in {1000..1}
do
    # Unzip the current zip file
    unzip $current_zip

    # Prepare the next zip file name
    next_zip=$((i - 1)).zip

    # If next zip file exists, set it as the current zip file
    if [ -f $next_zip ]; then
        current_zip=$next_zip
    else
        echo "File $next_zip does not exist. Exiting loop."
        break
    fi
done
