#!/bin/bash

####################################################################
# Autor: Aarón Álvarez Rodríguez
# Nombre: ej05-calcula_segundos.sh
####################################################################

dia=$1
hora=$2
minutos=$3
segundos=$4

total_segundos=$(($dia*86400+$hora*3600+$minutos*60+$segundos))
echo "$dia días, $hora horas, $minutos minutos y $segundos son un total de $total_segundos segundos."