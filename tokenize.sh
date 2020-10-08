#!/bin/bash
IFS=';' 
token_cnt=2
filename="$1"
while read -r line; do
    name="$line"
    echo "line read from file - $name"
    tokens=( $name )
    len=${#tokens[@]}
    if [ "$len" -ne 2 ];then
      echo "Error not match";
      exit 1
    fi
    echo "len: $len"
    echo ${tokens[0]} >> Branch
    echo ${tokens[1]} >> MergeCommits
done < "$filename"


