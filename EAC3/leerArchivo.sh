#!/bin/bash 

GRUP="prueba1"
FILE="file-user"
ACTUAL=$PWD
EXISTEG=`cat /etc/group | grep ^$GRUP | wc -l`

function gaddurs() {
if ! test -f $FILE; then
	echo "no existe el archivo"
  exit 2
fi

if [ $EXISTEG -ge 1 ]; then 
  echo "grup exists $EXISTEG"
else 
  INSERTAR=`sudo groupadd $GRUP`
  echo "Group $GRUP added "

fi

while IFS= read -r line; do
  
  EXISTEU=`cat /etc/passwd | grep ^$line | wc -l `
  
  if [ $EXISTEU -ge 1 ] ; then
    INSERTARUG=`sudo usermod -a -G  $GRUP $line` 
    echo "User $line($GRUP) modified"
  else
    echo " Error user $line not exists "    
  fi   
  
done < $FILE

}

gaddurs
