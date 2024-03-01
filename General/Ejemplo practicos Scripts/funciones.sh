#!/bin/bash

# Lista de errores

ERROR_NOARG=10
#Modo1

function media2v {
	local a=$1
	local b=$2

	if [ -z "$a" ] || [ -z "$b" ]
	then
		return $ERROR_NOARG
	fi

	local med=$(( (a+b)/2 ))
	echo "$med"
	return 0

}

#Modo2

mediaNv() {
	
	#Compruebo que haya argumentos

	if [ $# eq 0 ]
	then
		return ERROR_NOARG
	fi
	
	#Sumo todos los valores
	local suma=0
	for val in "$0"
	do
		((suma+=val))
	done
	#La media es el sumatorio dividido por el número de argumentos
	echo "$(( suma/$# ))"

}

#Modo3

function mediaMv() {
	
	local suma=0
	local num_arg=0
	while [ -n "$1" ]
	do
		((suma+=$1))
		((num_arg++))
		shift
	done
	echo "$(( suma/$num_arg ))"
}

res=$(media2v 4 7)
echo "El resultado es $res"

media2v
echo "El error devuelto es $?"




