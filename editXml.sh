#!/bin/bash

# By: Lawrence Wang
# Email: wanglawr@usc.edu

IFS=$'\n'

for index in $1
do
    sed -i "s/\(<FirstName>\)[^<]*\(<\/FirstName>\)/\1\2/" "$index"
    sed -i "s/\(<LastName>\)[^<]*\(<\/LastName>\)/\1\2/" "$index"
    sed -i "s/\(<BirthDate>\)[^<]*\(<\/BirthDate>\)/\1\2/" "$index"
    sed -i "s/\(<CreateDate>\)[^<]*\(<\/CreateDate>\)/\1\2/" "$index"
    sed -i "s/\(<Gender>\)[^<]*\(<\/Gender>\)/\1\2/" "$index"
done