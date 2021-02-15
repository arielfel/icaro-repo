#!/bin/bash

greeting="Bienvenido"
user = $(whoami)
day=$(date +%A)

echo "$greeting $user! Hoy es el $day, y es el mejor día de la semana!"
echo "Tu version de bash es la siguiente: $BASH_VERSION."
