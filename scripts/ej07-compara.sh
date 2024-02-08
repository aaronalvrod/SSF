##################
#
# Nombre: ej07-compara.sh
#
##################


valor1=$1
valor2=$2

if [ "$a" = "" ] ; then
	read -p "Por favor, introduzca el primer valor: " a
fi
if [ "$valor1" -eq  "$valor2" ] ; then
	echo " "$valor1" y "$valor2" son iguales"
elif [ $valor1 -gt $valor2 ] ; then
	echo "$valor1 es mayor que $valor2"
elif [ $valor1 -lt $valor2 ] ; then
	echo "$valor1 es menor que $valor2"
elif [ $valor2 -gt $valor1 ] ; then
        echo "$valor2 es mayor que $valor1"
elif [ $valor2 -lt $valor1 ] ; then
        echo "$valor2 es menor que $valor1"
fi

