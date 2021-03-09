#! /bin/bash
# @Juan Sánchez
#
# Marzo 2021
#
# Ejercicio 5 lista 03
# Descripcion: Mostrar por stdout las lineas introduciad por stdin de menos de 50 caracteres
# ------------------------------------------------------------------------------------------------

while read -r line
do
 cont=$(echo $line | wc -c)
 if [ $cont -le 50 ]
 then
  echo "$line"
 else
  echo "$line" >> /dev/null
 fi
done

