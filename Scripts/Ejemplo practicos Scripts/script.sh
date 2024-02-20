#!/bin/bash

#################################
#
# Nombre: ej02-crea_usuario.sh
#
# Objetivo: Simular la creación de un usuario
# 
# Autor: Aarón Álvarez
# Entradas: 1: Nombre, 2: apellido, 3: usuario
# Salidas: Mensaje
#
# Historial:
#
# 2023-12-18: version 1
#
##################################

nombre=$1
apellido=$2
usuario=$3

echo "Bienvenido, $nombre"
echo "Tus datos son $nombre, $apellido"
echo "Vamos a crear tu usuario: $usuario"
echo "Tu nueva id es $RANDOM"

