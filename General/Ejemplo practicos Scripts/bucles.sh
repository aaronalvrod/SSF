#!/bin/bash

##########################################
# Nombre: bucles.sh
# Autor: Aaron Alvarez
# Objetivo: ejemplos simples de bucles en script
# historial: 15/01/2024
#########################################

for i in 1 2 3 4 5 6 7 8 9 10
do
	echo "El valor de i es $1"
done
# Puede ser cualquier valor
for i in "Monaco" "Francia" "Reino Unido" "Italia"
do
	echo"El país es: $1"
done
# Bucle por rango
for i in {1..20}
do
	echo "El valor de i es $1"
done

# Bucle decreciente: 20, 17, 14, .."
for i in {20..1..-3}
do
	echo "El valor de 1 es $1"
done

#-----------------------------------

for i in {0..100..5}
do
	echo "El cuadrado de $1 es $(( i**2 ))"
done

read "Indique el valor máximo: " n
for i in {0..$n}
do
	echo "El cuadrado de $1 es $(( i**2 ))"
done

#-----------------------

#Sintaxis C-like
# for (( var=ini; cond; actual))
for ((i=0; i<$n; i++))
do
	echo "Los valores de i son $i"
done
