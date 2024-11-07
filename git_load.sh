#!/bin/bash

# Iterate through each directory in the current location
for dir in ./*; do
if [ -f "$dir" ]; then
    # Remove the trailing '/' to get only the directory name
   

    # Display the current directory name
    echo "Uploading files to Git in directory: $dir"

    # Stage all changes (new, modified, and deleted files) in the specific directory
    git add "$dir"

    # Commit the changes
    git commit -m "Updated files in $dir"

    # Push to the origin repository on the main branch
    git push origin main
fi

done

