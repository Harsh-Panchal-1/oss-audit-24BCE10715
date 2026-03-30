#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Harsh Panchal

PACKAGE="git"

echo "Inspecting package: $PACKAGE"
echo "-------------------------------------"

# Check if package is installed using dpkg (for Ubuntu/Debian)
if dpkg -l "$PACKAGE" &>/dev/null; then
    echo "$PACKAGE is installed."
    echo "Details:"
    # Grab version and description using pipe, grep, and awk
    dpkg -l "$PACKAGE" | grep "^ii" | awk '{print "Version: " $3 "\nDesc: " $1}'
else
    echo "$PACKAGE is NOT installed."
fi

echo "-------------------------------------"
# Case statement that prints a one-line philosophy note
case $PACKAGE in
    httpd|apache2)
        echo "Apache: the web server that built the open internet."
        ;;
    mysql)
        echo "MySQL: open source at the heart of millions of apps."
        ;;
    git)
        echo "Git: the distributed tool Linus built when proprietary failed him."
        ;;
    firefox)
        echo "Firefox: a nonprofit fighting for an open web."
        ;;
    *)
        echo "A valuable part of the open source ecosystem."
        ;;
esac