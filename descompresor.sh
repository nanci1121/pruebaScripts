#!/bin/bash

name_descompressed=$(7z l content.gzip | grep "Name" -A 2 | tail -n 1 | awk 'NF{print $NF}')
7z x content.gzip > /dev/null 2>&1

while true; do
    7z l $name_descompressed > /dev/null 2>&1
    if [ "($echo $?)" == "0"]; then
        descompressed_next=$(7z l content.gzip | grep "Name" -A 2 | tail -n 1 | awk 'NF{print $NF}')
        7z x $name_descompressed > dev/null 2>&1 && name_descompressed=$descompressed_next
    else
        cat &name_descompressed; rm data* 2>/dev/null
        exit 1
    fi
done