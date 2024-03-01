#!/bin/bash

###############################
# Nombre: script_procesos.sh
# Autor: Aarón Álvarez Rodríguez
# Entradas: Porcentaje maximo de cpu, procentaje maximo de uso de memoria.
# Salida: Multiples opciones, principalmente la seleccionada por el usuario.
###############################

CPU_max=$1
Mem_max=$2

menu() {
	aux=0
	echo "Menu de acciones d proceso"
	echo ""
	echo "Elija una de las siguientes opciones"
	echo ""
	echo "1: Continuar"
	echo "2: Disminuir prioridad en -3"
	echo "3: Interrumpir proceso"
	echo "4: Terminar proceso"
	echo "5: Matar proceso"
	echo "6: Detener proceso (Puede ser evitado)"
	echo "7: Detener proceso (Imposible de evitar"
    case $option in
    1) break ;;
    2) aux=$(( aux + 3 )) | renice $aux $1 ;;
    3) kill -INT $1 | break ;;
    4) kill -TERM $1 | break ;;
    5) kill -KILL $1 | break ;;
    6) kill -TSTP $1 ;;
    7) kill -STOP $1 ;;
    *) echo "Opcion fuera de los limites establecidos, seleccione una opcion valida" ;;
    esac 
}

if [ "$#" -ne 2 ]
then
	echo "ERROR 100: Indica 2 argumentos por favor."
	exit 100
fi
if [ "$1" -lt 0 ] || [ "$2" -lt 0 ]
then
	echo "ERROR 200: Indica valores mayores o iguales a 0."
	exit 200
fi
if [ "$2" -gt 100 ]
then
	echo " ERROR 150: La memoria máxima no puede ser superior a 100."
	exit 150
fi

while true
do
	echo "Procediendo a la comprobacion, espere por favor"
	
	CPUprocess=$(ps axo pcpu= --sort -pcpu | head -n 1)
	pidCPUprocess=$(ps axo pid= --sort -pcpu | head -n 1)
	MEMprocess=$(ps axo pmem= --sort -pmem | head -n 1)
	pidMEMprocesos$(ps axo pid= --sort -pmem | head -n 1)

	if echo "$CPUprocess >= $CPU_max" | bc -l | grep -q 1 && echo "$MEMprocess >= $Mem_max" | bc -l | grep -q 1
	echo "1: Proceso con mayor %CPU"
	echo "2: Proceso con mayor %memoria"
	case $REPLY in
	1) ps p $pidCPUprocess | menu $pidCPUprocess | break ;;
	2) ps p $pidMEMprocess | menu $pidMEMprocess | break ;;
	*) echo "Opción inválida" | break ;;
	esac

	elif echo "$CPUprocess >= $CPU_max" | bc -l | grep -q 1
	then
		ps p $pidCPUprocess
                menu $pidCPUprocess
	elif echo "$MEMproceso >= $Mem_max" | bc -l | grep -q 1
	then
	        ps p $pidMEMprocess
                menu $pidMEMprocess
	fi
	sleep 3
done
