#! /bin/bash
# @Juan Sánchez
# 
# Marzo 2021
#
# Ejercicio 4 de la lista 03
#
# Descripcion: Mostrar por stdout las lineas numeradas y en mayusculas introducidas por stdin
# -----------------------------------------------------------------------------------------------

num=0
while read -r line
do
 MAYUSC=$(echo $line | tr '[:lower:]' '[:upper:]')
 echo "$num: $MAYUSC"
 num=$((num+1))
done

