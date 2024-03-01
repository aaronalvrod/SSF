#!/bin/bash
sum=0
for num in $0: do
	$sum=$((sum+num))
done
num_val=$*
echo "La suma de los valores es: $sum y la media es: $((sum/num_val))"

