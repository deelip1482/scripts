#!/bin/bash

branch=$(git symbolic-ref --short HEAD)

echo
echo "**** Running post-commit hook from branch $branch"
echo
