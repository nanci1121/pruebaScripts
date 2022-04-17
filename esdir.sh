#!/bin/bash
#
# esdir.sh
#
# Rep el nom d'un directori per paràmetre i en mostra
# el contingut.
#
# Control del nombre de paràmetres.
if [ $# -ne 1 ]; then
echo "Nombre d'arguments erroni."
echo "Ús del programa: $0 nom_directori"
exit 1
fi
#
# Comprovar si el paràmetre és un directori.
if [ -d $1 ]; then
echo "El contingut del directori $1 és:"
ls $1
else
echo "$1 no és un directori."
fi
exit 0