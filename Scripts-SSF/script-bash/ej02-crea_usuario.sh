#!/bin/bash

####################################################################
# Autor: Aarón Álvarez Rodríguez
# Nombre: ej02-crea_usuario.sh
####################################################################

nombre=$1
apellidos=$2
usuario=$3

echo "Bienvenido $nombre"
echo "Sus datos son: $nombre, $apellidos"
echo "Su usuario es: $usuario"
echo "Su nueva id es: $RANDOM"