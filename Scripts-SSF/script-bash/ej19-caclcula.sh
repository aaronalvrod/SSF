############################################
# Autor: Aarón Álvarez Rodríguez
# Nombre: ej19-calcula_cambio.sh
############################################

if [ "$#" -ne 1 ]; then
    echo "ERROR: Debes escribir un valor (numérico), el precio del artículo!"
    exit
fi

precio_arti=$1


billetes=(500 200 100 50 20 10 5 2 1)

read -p "Indique el dinero pagado: " dinero_entregado

cambio=$((dinero_entregado - precio_arti))

echo "Se ha comprado un artículo de $precio_arti euros y ha pagado $dinero_entregado euros."
echo "El cambio son $cambio euro(s), debe entregar:"

for billete in "${billetes[@]}"; do
    num_billete=$((cambio / billete))
    if [ "$num_billete" -gt 0 ]; then
        echo "$num_billete billete(s) de $billete euro(s)"
        cambio=$((cambio - num_billete * billete))
    fi
done