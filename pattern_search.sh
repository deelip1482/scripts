#!/bin/bash
pattern=("error" "error:" "ERROR" "error: patch failed:" "error: while searching for")
#pattern=("deelip" "raju" "BUG_ID" "parent_id")

file=$1
declare file_content=$( cat "${file}" )
for mystr in "${pattern[@]}"; do 
    if [[ " $file_content " =~ $mystr ]] # please note the space before and after the file content
      then
        echo "$mystr found"
      else
        echo "$mystr not found"
    fi
    
done

