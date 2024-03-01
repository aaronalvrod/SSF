############################################
# Autor: Aarón Álvarez Rodríguez
# Nombre: ej09-info_ruta.sh
# Entradas: 
# Salidas: 
############################################

if [ "$#" -eq 0 ] 
then
    echo "ERROR: Debe indicar un argumento."
    exit 
fi

ruta=$1
if [ ! -e "$ruta" ] 
then
    echo "ERROR: La ruta $ruta no existe en el disco."
    exit 
fi

if [ -f "$ruta" ] 
then
    echo "$ruta es un fichero"

elif [ -d "$ruta" ] 
then
    echo "$ruta es un directorio"

elif [ -L "$ruta" ]
then
    echo "$ruta es un enlace"
else
    echo "$ruta es otra cosa"
fi

if [ -w "$ruta" ] 
then
    echo "$ruta tiene permiso de escritura"
else
    echo "$ruta NO tiene permiso de escritura"
fi

if [ -r "$ruta" ]
then
    echo "$ruta tiene permiso de lectura"
else
    echo "$ruta NO tiene permiso de lectura"
fi

if [ -x "$ruta" ]
then
    echo "$ruta tiene permiso de ejecución"
else
    echo "$ruta NO tiene permiso de ejecución"
fi

if [ -s "$ruta" ]
then
    echo "$ruta no está vacío"
else
    echo "$ruta está vacío"
fi