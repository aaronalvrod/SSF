###########################################
# Autor: Aarón Álvarez Rodríguez
# Nombre: ej17-deposito.sh
############################################

if [ -z "$1" ]
then
    echo "Debes indicar la cantidad de euros del depósito"
    read -p "Escriba el argumento de cantidad del depósito: " deposito
elif [ -z "$2" ]
then
    echo "Debes indicar el % TAE"
    read -p "Indica el % TAE: " TAE
elif [ -z "$3" ]
then
    echo "Debes indicar la cantidad de años del depósito"
    read -p "Indica la cantidad de años: " anyos
else
    deposito=$1
    TAE=$2
    anyos=$3

    echo "Has ingresado los 3 argumentos, que son $deposito como depósito, con un interés de $TAE % TAE a $anyos años."

    echo "Mostrando los datos para un depósito de $deposito euros con interés $TAE% a $anyos años:"

    for (( i=1; i<=$anyos; i++ )) 
    do
        ganado=$(echo "scale=2; $deposito * $TAE / 100" | bc)
        total=$(echo "scale=2; $deposito + $ganado" | bc)
        echo "Año $i: $deposito * (1 + $TAE/100) = $total euros (en total has ganado $ganado euros)"
        deposito=$total
    done
fi