#!/bin/bash
python3 -V | grep 'Python 3' &> /dev/null
if [ $? == 0 ]; then
   echo "Python3 installed"
else
   echo "Python3 is not installed"
fi


