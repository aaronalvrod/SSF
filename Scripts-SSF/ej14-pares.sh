###########################################
# Autor: Aarón Álvarez Rodríguez
# Nombre: ej14-pares.sh
# Entradas: 
# Salidas: 
############################################

num1=$1
num2=$2

while [ -z "$num1" ] || [ -z "$num2" ]
do
    read -p "Escribe el primer valor: " num1
    read -p "Escribe el segundo valor: " num2
done

if [ "$num1" -gt "$num2" ]; then
    guardadovalor=$num1
    num1=$num2
    num2=$guardadovalor
fi

for num in $(seq $num1 $num2)
do
  if [ $((num%2)) -eq 0 ]
  then
    cuadrado=$((num * num))
    echo "El cuadrado del número $num es $cuadrado"
  fi
done