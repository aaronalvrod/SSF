#!/bin/bash

i=0
while [ "$i" -lt 10 ]
do
	echo "El valor de i es: $i"
	i=$((i+1))
done

i=0
until [ "$i" -gt 10 ]
do
        echo "El valor de i es: $i"
        i=$((i+1))
done




