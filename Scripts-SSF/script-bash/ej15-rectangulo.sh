###########################################
# Autor: Aarón Álvarez Rodríguez
# Nombre: ej15-rectangulo.sh  
############################################

if [ "$#" -eq 0 ]; then
    base=7
    altura=4
elif [ "$#" -eq 1 ]; then
    base=$1
    altura=4
else
    base=$1
    altura=$2
fi

area=$((base * altura))

for (( i=1; i<=altura; i++ )); do
    for (( j=1; j<=base; j++ )); do
        echo -n "*"
    done
    echo  
done

echo "El área del rectángulo es $area"