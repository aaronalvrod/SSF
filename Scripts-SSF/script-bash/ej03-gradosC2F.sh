#!/bin/bash

####################################################################
# Autor: Aarón Álvarez Rodríguez
# Nombre: ej03-gradosC2F.sh
####################################################################

g_celsius=$1

g_fahrenheit=$(($g_celsius * 9 / 5 + 32))

echo "$g_celsius grados Celsius son equivalentes a $g_fahrenheit grados Fahrenheit"