#!/bin/bash

####################################################################
# Autor: Aarón Álvarez Rodríguez
# Nombre: ej06-calcula_tiempos.sh
# Entradas: Números de segundos
# Salidas: Tiempo de días, horas, minutos y segundos
# Historial: 2024-02-19
####################################################################

if [ $# -eq 0 ]
then
	echo "ERROR: No has indicado un argumenyto"
	echo "SINTAXIS: $0 <total_segundos>"
	exit 

elif [ $# -eq 1 ]
then
	echo "Correcto!"
else
	echo "Has indicado $# argumentos, se usará el primeros y se ignorará el resto"
fi