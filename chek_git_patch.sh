#!/bin/bash

git apply --ignore-space-change --ignore-whitespace  --check -v $1 2>&1
if [ "$?" -ne 0 ];
then
     echo "PATCH ERROR:."
     exit 1
fi

echo "nothing happned"

