###########################################
# Autor: Aarón Álvarez Rodríguez
# Nombre: ej10-menu_sistema.sh
############################################

echo "***********************"
echo "*       Menú          *"
echo "***********************"
echo ""

echo "1) 1: Indica el espacio libre de la partición raíz (en porcentaje)."
echo "2) 2: Indica el espacio libre de la partición raíz (en tamaño)."
echo "3) 3: Indica el usuario actual."
echo "4) 4: Indica el nombre de la máquina."
echo "5) 5: Indica el número de usuarios del sistema."
echo "6) 6: Total de espacio usado en todos mis directorios personales (en formato "humano": M, G, ...)"
echo "7) 7: Mostrar permisos"
echo "8) 8: Salir"
read -p "Introduzca su opción: " opcion

case "$opcion" in
    1)
        porcentaje_espacio=$(df -h | cut -f5)
        echo "El espacio libre de la partición raíz en porcentaje es $porcentaje_espacio"
        ;;
    2)
        tamanyo_libre=$(df -h | cut -f3)
         echo "El espacio libre de la partición raíz es $tamanyo_libre"
        ;;
    3) 
        user_nombre=$(whoami)
        echo " El usuario tiene como nombre $user_nombre"
        ;;
    4)
        nombre_maquina=$(hostname) 
        echo "El nombre de la máquina es $nombre_maquina"
        ;;
    5) 
        cantidad_usuarios = $(who | cut -d " " -f 1 | sort -u | wc -l)
        echo "Los usuarios son $cantidad_usuarios"
        ;;
    6)
        espacio_directorios=$(du -sh /home/* | cut -f1) 
        echo "El total de espacio usado en directorios personales es de $espacio_directorios"
        ;;
    7)
        datos_permisos=$(ls -ld ~)
        echo "Sus permisos son "
        ;;
    8)
        echo "Saliendo del menú"
        exit
        ;;
    *)  ECHO "Error: '$opcion' no es una opción correcta"
    ;;