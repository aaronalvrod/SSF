#!/bin/bash

#echo "El valor de a es: $a"
#echo "El valor de b es: $b"
#. ./var.sh el punto ejecuta el script en otra shell
# $? te enseña si hay linea de error
#mkdir prb
#cd prb
#cod_err = $?

#if [ "$cod_err" -eq 0 ]
#then
#	echo "No hubo error"
#else
#	echo "Hubo un error con código $cod_err"
#fi
#------------------
sleep 2
read -p "Indique su nombre:" nombre
read -p "Indique su apellido: " apellido
read -p "Indique su ususario:" usuario

read "Bienvenido: $nombre"
read "Tus datos son: $nombre, $apellido"
read "Vamos a crear tu usuario: $usuario"
read "TU nueva ID es $RANDOM"











