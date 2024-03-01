#!/bin/bash


nombre=$1

while [ "$nombre" = "" ]
do
	read -p "Introduzca su nombre: " nombre
done
echo "Tu nombre es: $nombre"



