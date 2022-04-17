#!/bin/bash
# endevina.sh
# Joc per endevinar un número entre 1 i 6
#
INTENTS=1
# Calculem un número aleatori entre 1 i 6
# Mòdul 6 dóna un número entre 0 i 5
(( N = $RANDOM % 6 + 1 ))
echo -n "Endevina un número entre 1 i 6: "
read TRIA
while (( "$TRIA" != $N )); do
echo
echo -n "El número no és $TRIA, torna-ho a intentar: "
read TRIA
(( INTENTS++ ))
done
echo
echo "L'has endevinat, era el $N!!"
echo "Has necessitat $INTENTS intents."