#!/bin/bash
#
# holamon.sh
#
# netega la pantalla i a continuacio 
# mostra el seguent:
# Hola, món!
# Avui es dd/mm/aa.
# Sic <nom> i estic aprenent a fer guions de shell
# Adéu!

FECHA=$(date +%x)
NOMBRE=$(whoami)

clear
echo "Hola, món!"
echo "Avui es dia $FECHA"
echo "Sóc $NOMBRE i estic aprenent a fer guions de shell"
echo "Adèu!"