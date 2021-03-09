#! /bin/bash
# @Juan Sánchez
# 
# Feb 2021
#
# Ejercicio 1 de la lista 03
#
# Descripcion: Mostrar por stdout, los args que tengan mas de 4 caracteres
# --------------------------------------------------------------------------------

for arg in $*
do
 cont=$(echo $arg | wc -c)
 if [ $cont -ge 5 ]
 then
  echo $arg
 fi
done
exit 0
