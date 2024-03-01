#!/bin/bash

####################################################################
# Autor: Aarón Álvarez Rodríguez
# Nombre: ej06-calcula_tiempos.sh
# Entradas: Numero de segundos
# Salidas: Dias, horas, minutos y segundos que correspondan a los segundos indicados
# Historial: 2024-02-19
####################################################################

segundos=$1

dias=$(($segundos_totales/86400))
seg_restantes=$(($segundos_totales % 86400))

horas=$(($seg_restantes / 3600))
seg_restantes=$(($seg_restantes % 3600))

minutos=$(($seg_restantes / 60))
segundos=$(($seg_restantes % 60))

echo "$segundos equivalen a: $dias dias, $horas horas, $minutos minutos y $segundos segundos"