#!/bin/sh

folder_name=$1

if [ ! -d "$folder_name" ]; then
  mkdir "$folder_name"
fi

for i in 0 1 2 3 4
do
  touch "$folder_name/file$i.txt"
done

cd "$folder_name"
for file in *.txt
do
  sub_folder="${file%.txt}"
  mkdir "$sub_folder"
  ln -s "../$file" "$sub_folder/$file"
done

