#!/bin/bash

current=$(pwd)

cp -r "$1" "$current"

copy=$(ls -d */)

if [[ $directories == *"No such file or directory"* ]]; then
  echo "Error finding folders. Please check the path and try again."
fi

cd $copy

directories=$(ls -d */)

arrDirectories=$(echo $directories | tr "/  " "\n")

for index in $arrDirectories
do
    cd "$current"/$copy
    cd $index;
    xml=$(ls | grep .xml)
    pdf=$(ls | grep .pdf)

    sh "$current"/editXml.sh "$xml"
    sh "$current"/editPdf.sh "$pdf" "$current"
done