#!/bin/bash

validate_positve_int()
{
if [[ $1 =~ ^-?[0-9]+$ ]] && (($1 > 0))
    then 
    echo "yes int"
else
  echo "not int"
fi
}

echo "Main started"
validate_positve_int "$1";
