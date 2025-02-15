#!/bin/bash

# Directory to search for folders
base_dir=$(pwd)

# Loop through each folder in the base directory
for dir in "$base_dir"/*; do

    # Check if it's a directory
    if [ -d "$dir" ]; then
        echo "Entering directory: $dir"
        
        # Change to the directory
        pushd $dir
        
        # Run make to build the project
        echo "Running make in $dir"
        if [ -n "Makefile" ]; then
	   make clean ; make
	fi

        # Find the executable file (assuming there's only one)
        executable=$(find . -type f -executable | head -n 1)
        
        # If an executable file is found, run it
        if [ -n "$executable" ]; then
            echo "Executing $executable"
            ./"$executable"
	    echo "Done"
        else
            echo "No executable found in $dir"
        fi
        
        # Go back to the base directory
        popd
    fi
done

