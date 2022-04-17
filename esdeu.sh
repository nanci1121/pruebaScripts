#!/bin/bash
echo -n "Escriu un número: "
read X
if [ $X -lt 10 ]; then
echo "X és més petit que 10"
else
    if [ $X -gt 10 ]; then
        echo "X és més gran que 10"
    else
        echo "X és igual a 10"
    fi
fi