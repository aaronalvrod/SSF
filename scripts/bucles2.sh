#!/bin/bash

##########################################
# Nombre: bucles2.sh
# Autor: Aaron Alvarez
# Objetivo: ejemplos simples de bucles en script
# historial: 15/01/2024
#########################################

for arg in "$*"
do
	echo '$*: '"El argumento es $arg"
done

for arg in $@
do
        echo "El argumento es $arg"
done

for elem in *
do
	echo "Elemento: $elem"
	chmod go-x $elem
done

for elem in b*.???
do
	echo "Elemento: $elem"
	chmod go-x $elem
done

for elem in $(date)
do
	echo "Elemento: $elem"
done

for elem in $(date)
do
	echo "Elemento: $elem"
done
