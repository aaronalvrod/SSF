###########################################
# Autor: Aarón Álvarez Rodríguez
# Nombre: ej13-rutas.sh
# Entradas: 
# Salidas: 
############################################

elementos=$(find . -type d -name '????*')

for elemento in $elementos; do
    ./ej09-info_ruta.sh "$elemento"
done