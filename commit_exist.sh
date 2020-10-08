#!/bin/bash
if git merge-base --is-ancestor $1 HEAD; then
    echo "true"; 
else 
    echo "false"; 
fi

