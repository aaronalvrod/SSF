###########################################
# Autor: Aarón Álvarez Rodríguez
# Nombre: ej07-calcula_tiempos.sh
############################################

num1=$1
num2=$2

if [ -z "$num1" ]
then
	read -p "Por favor, introduzca el primer valor: " num1
fi

if [ -z "$num2" ]
then
	read -p "Por favor, introduzca el segundo valor: " num2
fi


if [ "$num1" -lt "$num2" ]
then
    echo "$num2" es mayor que "$num1"
elif [ "$num1" -gt "$num2" ]
then
    echo "$num1" es mayor que "$num2"
else
    echo "$num1" y "$num2" son iguales.
fi