val=`ade lstrans -prop BUG_NUM -val $1 -repos`
echo "output is $val"
myval=$2
if [[ " $val " =~ $myval ]] # please note the space before and after the file content
     then
         echo "we found the name"
    else
        echo "we did not found"
fi

