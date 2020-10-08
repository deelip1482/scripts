#!/bin/bash

##### Get file list to checkout in ADE ##########
#getting all files changed 
co_files=($(grep '^+++' *.patch --no-filename | sed -e 's#+++ [ab]/##'))
sorted_unique_ids=($(echo "${co_files[@]}" | tr ' ' '\n' | sort -u | tr '\n' ' '))
for each in "${sorted_unique_ids[@]}"
do
  echo "File: $each"
done
