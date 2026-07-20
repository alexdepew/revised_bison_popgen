#!/bin/bash

# Ensure we are in the correct directory
# This script assumes ./params and ./input are in the current working directory

echo "Starting MicroDrop batch processing..."

# Loop through all parameter files in the ./params folder
for param_file in ./params/*.txt; do
    
    # Check if files actually exist to avoid errors in empty directories
    [ -e "$param_file" ] || continue
    
    echo "-------------------------------------------------------"
    echo "Processing: $param_file"
    
    # Execute MicroDrop using the -p flag for the parameter file
    # Path to executable may need to be adjusted (e.g., ./MicroDrop-1.01-x86_64)
    ./microdrop -p "$param_file"
    
    echo "Done with $param_file"
done

echo "-------------------------------------------------------"
echo "All populations processed successfully."
