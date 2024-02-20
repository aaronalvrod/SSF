#!/bin/bash
#################################
# Nombre: ej04-dia_semana.sh 
# Objetivo: Devolver dia de la fecha seleccionada
# Autor: Aarón Álvarez
# Entradas: Dia, mes y año
# Salidas: Dia de la semana
# Historial: 09-01-2024
################################
dia=$1
mes=$2
anyo=$3

dia_sem=$(date -d $anyo-$mes-$dia +"%A")

echo "El dia $dia/$mes/$anyo es $dia_sem"
