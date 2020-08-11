#!/usr/bin/bash


if [ -z "$1" ]
then
    echo "No link list (file) provided"
    exit 1
fi

echo "<ul>"
while read lnk
do
    echo "<li><a href='${lnk}'>${lnk}</a></li>"
done < "$1"
echo "</ul>"
