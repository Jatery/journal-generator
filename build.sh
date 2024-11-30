#!/bin/sh

echo "Building the project..."

dir="md"

for file in `ls $dir` 
do
    echo "Processing ${file}..."
    # do something with $file
    name=$(echo $file | cut -f 1 -d '.')
    file_path="$dir/$file"
    pandoc $file_path -o "pdf/$name.pdf" --pdf-engine=weasyprint
done


