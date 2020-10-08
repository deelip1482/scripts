if (echo a version 2.22.0; git --version) | sort -k3 | tail -1 | grep -q git
then
    echo "Good enough."
else
    echo "Not good"
fi
