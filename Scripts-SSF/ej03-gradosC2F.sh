#!/bin/bash

####################################################################
# Autor: Aarón Álvarez Rodríguez
# Nombre: ej03-gradosC2F.sh
# Entradas: Grados Celsius
# Salidas: Grados Fahrenheit
# Historial: 2024-02-19
####################################################################

g_celsius=$1

g_fahrenheit=$(($g_celsius * 9 / 5 + 32))

echo "$g_celsius grados Celsius son equivalentes a $g_fahrenheit grados Fahrenheit"