##################################
# Nombre: ej03-gradosC2F.sh
# Autor: Aaron Alvarez
# Objetivos: Convertir de grados Fahrenheit a grados Celsius
# Entradas: Grados Fahrenheit
# Salidas: Grados Celsius
# Historial: 19-12-2023 (v1)
##################################

gcelsius=$1
ndec=$2
 
 if [ $# = 0 ] ; then
 	echo "ERROR:No has indicado argumentos. Debes indicar 2 argumentos" 
 	echo "SINTAXIS: $0 <grados Fahrenheit> <num decimales>"
 	exit
 else
 	if [ $# -eq 1 ] ; then
		echo "Solo has indicado 1 argumento (ºF)"
		echo "Usaremos 2 decimales por defecto"
		ndec=2
 elif [ $# -eq 2 ]
 then
 	echo "Perfecto, has indicado 2 argumentos"
 else
 	echo "Has indicado $# argumentos"
 fi

fahrenheit=$(echo "scale=$index ; $gcelsius *1.8 + 32" | bc) 
echo "$fahrenheit"
