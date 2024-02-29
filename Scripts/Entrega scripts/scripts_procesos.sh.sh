#!/bin/bash

###########################################
# Nombre: Script gestión de servicios
# Entradas: Nombre de servicio
# Salida: Servicio existente, activo, habilitado, enmascarado, acciones del servicio...
# Autores: Germán y Aarón
###########################################

if [ -z "$1" ] 
then
read -p "Por favor, ingrese el nombre del servicio: " servicio
fi

if ! systemctl status "$servicio" 
then
echo "ERROR: El servicio no existe"
exit 10
fi

echo "Estado del servicio $servicio:"

systemctl is-active "$servicio"
if [ $? -eq 0 ]
then
echo "Active: true"
else
echo "Active: false"
fi

systemctl is-enabled "$servicio"
if [ $? -eq 0 ]
then
echo "Enabled: true"
else
echo "Enabled: false"
fi

systemctl is-enabled "$servicio" || grep -q "masked"
if [ $? -eq 0 ]
then
echo "Masked: true"
else
echo "Masked: false"
fi

echo ""
echo ""
echo "Acciones del servicio"
echo "1: Activar servicio"
echo "2: Habilitar servicio"
echo "3: Enmascarar servicio"
echo "4: Mostrar configuración del servicio"
echo "5: Reiniciar servicio"
echo "6: Reiniciar servicio (dejando el servicio en su ultimo estado)"
echo "7: Aplicar cambios en la configuración dejando el servicio activo"
echo "8: Aplicar cambios en la configuración dejando el servicio en su último estado (intentando evitar la interrupción del servicio)."
echo "9: Asignar la configuración de habilitado/deshabilitado indicada por el desarrollador (vendor preset)."        
echo "10: Salir."
echo ""
echo ""
read -p "¿Desea realizar alguna acción?: " opcion
case "$opcion" in
    1) sudo systemctl start $servicio ;;
    2) sudo systemctl enabled $servicio ;;
    3) sudo systemctl mask $servicio ;;
    4) sudo systemctl show $servicio ;;
    5) sudo systemctl restart $servicio ;;
    6) sudo systemctl try-restart $servicio ;;
    7) sudo systemctl reload $servicio ;;
    8) sudo systemctl try-reload-or-restart $servicio ;;
    9) sudo systemctl preset $servicio ;;
    10) exit ;;
    *) echo "ERROR: no es una acción posible" ;;
esac
