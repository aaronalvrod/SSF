############################################
# Autor: Aarón Álvarez Rodríguez
# Nombre: ej11-calculadora.sh
############################################

a=$1
b=$2

if [ $# -ne 2 ]
then    
    echo "Error, debe indicar valores"
    echo "SINTAXIS $0 <valor1><valor2>"
    exit
fi

select option in "Sumar" "Restar" "Multiplicar" "Dividir" "Exponenciar" "Resto"
do
    case $option in 
        "Sumar") echo "El resultado de $a + $b = $((a+b))" ;;
        "Restar") echo "El resultado de $a - $b = $((a-b))" ;;
        "Multiplicar") echo "El resultado de $a * $b = $((a*b))" ;;
        "Dividir") echo "El resultado de $a / $b = $((a/b))" ;;
        "Exponenciar") echo "El resultado de $a elevado a $b = $((a**b))" ;;
        "Resto") echo "El resto de $a dividido entre $b = $((a%b))" ;;
        *) echo "ERROR: has indicado una opción incorrecta" ;;
    esac
    break
done