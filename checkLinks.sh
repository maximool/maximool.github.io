#!/usr/bin/bash


if [ -z "$1" ]
then
    echo "No link list (file) provided"
    exit 1
fi

while read lnk
do
    (
        curl "$lnk" --silent > /dev/null
        if [[ "$?" != 0 ]]
        then
            echo "$lnk"
        fi
    ) &
done < "$1"
wait
