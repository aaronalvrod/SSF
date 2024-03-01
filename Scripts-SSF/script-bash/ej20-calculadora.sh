
############################################
# Autor: Aarón Álvarez Rodríguez
# Nombre: ej20-calculadora_func.sh 
############################################

sumar() {
    echo "El resultado de $a + $b = $((a + b))"
}

restar() {
    echo "El resultado de $a - $b = $((a - b))"
}

multiplicar() {
    echo "El resultado de $a * $b = $((a * b))"
}

dividir() {
    echo "El resultado de $a / $b = $((a / b))"
    
}

exponenciar() {
    echo "El resultado de $a elevado a $b = $((a**b))"
}

resto() {
    echo "El resto de $a dividido entre $b = $((a%b))"
}

if [ $# -ne 2 ]; then
    echo "Error: Debes proporcionar dos valores."
    echo "SINTAXIS: $0 <valor1> <valor2>"
    exit 1
fi

a=$1
b=$2

select option in "Sumar" "Restar" "Multiplicar" "Dividir" "Exponenciar" "Resto" "Salir"
do
    case $option in
        "Sumar") sumar ;;
        "Restar") restar ;;
        "Multiplicar") multiplicar ;;
        "Dividir") dividir ;;
        "Exponenciar") exponenciar ;;
        "Resto") resto ;;
        "Salir") break ;;  
        *) echo "Error: Opción incorrecta." ;;
    esac
done