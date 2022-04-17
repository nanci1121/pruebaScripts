#!/bin/bash
#
# suma.sh
#
# Rep dos nombres per paràmetre i mostra la suma per
# la sortida estàndard.
#
# Control del nombre de paràmetres:
if [ $# -ne 2 ]; then
    echo "Error: s'esperaven dos paràmetres."
    echo "Ús del programa: $0 num1 num2"
    exit 1
fi
# Rebuts dos paràmetres, fem la suma
(( SUMA = $1 + $2 ))
echo "La suma de $1 i $2 és: $SUMA"