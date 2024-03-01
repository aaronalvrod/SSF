#!/bin/bash

####################################################################
# Autor: Aarón Álvarez Rodríguez
# Nombre: ej02-crea_usuario.sh
# Entradas: Nombre, apellidos, usuario
# Salidas: Imprimir nombre, apellidos, usuario e id aleatoria
# Historial: 2024-02-19
####################################################################

nombre=$1
apellidos=$2
usuario=$3

echo "Bienvenido $nombre"
echo "Sus datos son: $nombre, $apellidos"
echo "Su usuario es: $usuario"
echo "Su nueva id es: $RANDOM"