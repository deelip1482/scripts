val=`ade lstrans -prop BUG_NUM -val $1 -repos | sed -n '2 p'`
echo "output is $val"
myval=$2

if [ -z "$val" ];then
   echo "No transaction found, continue";
else
   echo "Yes we do have transaction $val.."
   if [[ " $val " =~ $myval ]] # please note the space before and after the file content
    then
       echo "we found the same user"
   else
        echo "we did not found the user"
   fi
fi


