#!/bin/bash

# By: Lawrence Wang
# Email: wanglawr@usc.edu

IFS=$'\n'

for index in $1
do
    sh "$2"/pdfcrop.sh -t "0 0 0 320" "$index"
done