#!/bin/bash
TEMP_FILES="*.tmp"
if ls $TEMP_FILES 1> /dev/null 2>&1; then
    rm $TEMP_FILES
    echo "Cleanup completed. All .tmp files have been removed."
else
    echo "No .tmp files found to remove."
fi
