#!/bin/bash

num=10
echo introduzca  un numero del 1 al 10
read numero
if [ $numero -eq  $num ]; then
 echo Acertaste
else 
 echo Perdiste
fi
