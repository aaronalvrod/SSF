###########################################
# Autor: Aarón Álvarez Rodríguez
# Nombre: ej12-multiplo.sh
############################################

if [ "$#" -eq 0 ]; then
    echo "ERROR: Escribe al menos un número como argumento."
    exit 
fi

read -p "Introduzca un valor: " valor

for num in $@
do
    resto=$((num%$valor))
    
    if [ "$resto" -eq 0 ]
    then
        echo "El número $num es múltiplo de $valor"
    else
        echo "El número $num no es múltiplo de $valor"
    fi
done