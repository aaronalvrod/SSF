#!/bin/bash

####################################################################
# Autor: Aarón Álvarez Rodríguez
# Nombre: ej04-dia_semana.sh
####################################################################

dia=$1
mes=$2
anio=$3

fecha="$anio-$mes-$dia"
dia_semana=$(date -d "$fecha" "+%A")
echo "El dia de la semana de la fecha indicada $fecha fue: $dia_semana"
