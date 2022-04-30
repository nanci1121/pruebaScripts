#!/bin/bash
#
# buscar un archivo en el directorio general
# parametros 1=> nombre del archivo 2=> directorio donde buscar
nomScript=$0
archivo=$1
directorio=$2
echo "parametro 1 $1"
echo "parametro 2 $2"

if [[ $directorio  ]]; then
    echo "dentro if"
else
    echo "dentro else "
    directorio=/
    echo "directorio= $directorio"
fi

find $2 -name $1 -type f 2>/dev/null
echo $?