#!/bin/bash

folder_name="files"

if [ ! -d "$folder_name" ]; then
  mkdir "$folder_name"
fi

touch "$folder_name/file1.txt"
touch "$folder_name/file2.txt"
touch "$folder_name/file3.txt"
touch "$folder_name/file4.txt"
touch "$folder_name/file5.txt"
archive_name="$folder_name.tar"
tar -cvf "$archive_name" "$folder_name"
new_folder="$folder_name/files"
mkdir "$new_folder"

tar -xvf "$archive_name" -C "$new_folder"

