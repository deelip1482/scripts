#!/Abin/bash

ade lsviews | grep $1 &> /dev/null
if [ $? == 0 ]; then
   echo "matched"
else 
   echo "not matched"
fi
