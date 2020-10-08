echo "your asking for $1"
test=0
test=`git ls-remote --heads git@orahub.oraclecorp.com:fmw-bi-bips/bips.git $1 | wc -l`
if [ $test -eq 1 ]; then
    echo "This is valide Git Repository"
else 
    echo "Invalid Git repository" 
fi
