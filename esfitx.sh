#!/bin/bash
#
# esfitx.sh
#
# Rep un paràmetre i comprova si és un fitxer.
#
#
# Control del nombre de paràmetres
if [ $# -ne 1 ]; then
echo "Nombre d'arguments erroni."
echo "Ús del programa: $0 nom"
exit 1
fi
#
# Comprovar si el paràmetre és un fitxer
if [ -f $1 ]; then
echo "$1 és un fitxer."
fi
exit 0