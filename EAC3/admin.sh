#!/bin/bash
# admin.sh
# 

# Dona el usuaris que tenen el mateix shell
# amb un minim d'usuaris que rep el programa com argument

# nom programa i arguments 
nomScript=$0
subcomanda=$1
numUsuaris=$2
file=$3
subcomanda1="cmd-moduser"

#funcio cmd-moduser
function1(){
   echo "dentro de funcion moduser"
   echo "$numUsuaris  $file"
}

#echo "$nomScript"
#echo "$subcomanda"
#echo "$numUsuaris"
#echo "$file"
#echo "$#" #//numeros de argumentos
#echo "$*" #//todos los argumentos 

if [ $# -lt 1 ]; then
   echo "Nombre d'arguments erroni."
   echo "Ús del programa: $0 ha de tindre un argument com a minim"
   exit 1
fi


 #<< EOF

 case $subcomanda in 
   "cmd-moduser") function1 ;;
   "cmd-userbyshell")    echo "esta en la opcio cmd-usrbysell"         ;; 
   "cmd-sysinfo")        echo "esta en la opcio cmd-sysinfo"           ;;
   *) echo "la opcions son cmd-mouser, cmd-userbyshell o cmd-sysinfo"
      echo "la opcio escogida a segut $1"                      
 esac  
#EOF