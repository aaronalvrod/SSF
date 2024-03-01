#!/bin/bash

regalos=("calcetines" "corbata" "accesorios" "pulsera" "prismaticos" "camiseta de futbol")

echo "Este año me han regalado: ${regalos[@]}"

echo "Mis regalos han sido: "
for reg in "${regalos[*]}"
do
	echo "	$reg"
done
# Contar regalos
echo "Tengo ${#regalos[@]} regalos"
#saber los indices
echo "Y los indicies son ${!regalos[@]}"
# Insertar elementos por el final
regalos+=("unas pantunflas")
# Insertar elementos al principio
regalos=("una camara" ${regalos[@]})
#Arrays asociativos

declare -A animal

anima[perro]="guau guau"
animal[gato]="miauuuu"
animal[gallo]="kikirikiiii"
animal[vaca]="muuuuuuu"

read -p "Dime un animal: " anim
echo "Elegistes $anim y su sonido es ${animal[$anim]}"






