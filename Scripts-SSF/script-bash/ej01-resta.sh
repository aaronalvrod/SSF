#!/bin/bash

####################################################################
# Autor: Aarón Álvarez Rodríguez
# Nombre: ej01_resta.sh
####################################################################

if [ "$#" -ne 2 ]; then
    echo "ERROR: insuficientes valores"
    exit
fi

num1=$1
num2=$2
resta=$(($num1-$num2))
echo "Resultado de $num1 - $num2 = $resta