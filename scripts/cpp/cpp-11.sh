#!/bin/bash

full_path="$ZED_FILE"
filename_and_ext=$(basename "$full_path")


filename="${filename_and_ext%.*}"
extension="${filename_and_ext##*.}"

echo "running $filename_and_ext from $full_path"

if [[ "$extension" == "cpp" ]]; then
    g++ --std=c++11 -O2 -Wall -Wextra "$full_path" -o "$filename" && ./"$filename"
else
    echo "not a cpp file"
fi
