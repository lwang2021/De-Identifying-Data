#!/bin/bash

# By: Lawrence Wang
# Email: wanglawr@usc.edu

current=$(pwd)

cp -r "$1" "$current"

copy=$(ls -d */)

if [[ $directories == *"No such file or directory"* ]]; then
  echo "Error finding folders. Please check the path and try again."
fi

cd "$copy"

for folder in *
do
    if [ -d "$folder" ]; then
        cd "$folder";
        xml=$(ls | grep .xml)
        pdf=$(ls | grep .pdf)

        sh "$current"/editXml.sh "$xml"
        sh "$current"/editPdf.sh "$pdf" "$current"
        cd "$current"/"$copy"
    fi
done
