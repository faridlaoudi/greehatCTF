# Description

The flag.txt file has been zipped 1000 time and its your mission to find it now.

Author: AN1S
Points: 95

# Solution
we can notice that everytime we unzip the file the name of the file decrease so i made a bash scipt to extract the 1000 zip files
`
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
after we execute it we found a flag.txt contain the flag

Flag: `microCTF{z1p5_z1p5_z1p5}`

