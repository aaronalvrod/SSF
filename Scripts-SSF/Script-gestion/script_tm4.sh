#!/bin/bash
########################################
# Nombre: Script tema 4
# Entradas: paquete instalado
# Salidas: Paquete instalado, paquete no instalado, mostrar version, reinstalarlo, actualizarlo, eliminarlo manteniendo configuracion, eliminarlo totalmente
# Autores: Aaron y Angel
########################################
sudo apt update > /dev/null

mostar_informacion(){
 nombre_paquete="$1"
apt show "$nombre_paquete"
}

instalar_paquete() {
nombre_paquete="$1"
sudo apt install "$nombre_paquete"
}

paquete_instalado() {
nombre_paquete="$1"
dpkg -l | grep -w "$nombre_paquete" &> /dev/null
}

if [ -z "$1" ]; then
    read -p "Introduce el nombre del paquete: " nombre_paquete
else
    nombre_paquete="$1"
fi

if paquete_instalado "$nombre_paquete"; then
    echo "El paquete $nombre_paquete está instalado."
    echo "Opciones disponibles:"
    echo "1. Mostrar su versión"
    echo "2. Reinstalarlo"
    echo "3. Actualizarlo (si es actualizable)"
    echo "4. Eliminarlo (guardando la configuración)"
    echo "5. Eliminarlo totalmente"

    read -p "Selecciona una opción (1-5): " opcion

    case "$opcion" in
        1) mostrar_informacion "$nombre_paquete";;
        2) instalar_paquete "$nombre_paquete";;
        3) sudo apt upgrade "$nombre_paquete";;
        4) sudo apt remove "$nombre_paquete";;
        5) sudo apt purge "$nombre_paquete";;
        *) echo "Opción no válida.";;
    esac
else
    resultados=$(apt search "$nombre_paquete")
    if [ -z "$resultados" ]; then
        echo "No se encontró ningún paquete con el nombre \"$nombre_paquete\" en los repositorios."
    else
        echo "Resultados de búsqueda:"
        echo "$resultados"
    fi
fi
