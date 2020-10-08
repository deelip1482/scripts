if [ "$1" -eq "$1" ] 2>/dev/null
then
    echo "$1 is an integer !!"
else
    echo "ERROR: first parameter must be an integer."
    echo $USAGE
    exit 1
fi
