#! /bin/bash
#
# @juan Sánchez
#
# Marzo 2021
#
# Ejercicio 2 de la lista 03
#
# Descripcion: Procesar los argumetnos i contar cuanto hay de 3 o ams caracteres
#----------------------------------------------------------------------------------

cont=0
for arg in $*
do
  len=$(echo $arg | wc -c)
  if [ $len -ge 4 ]
  then
   cont=$((cont+1))
  fi
done
echo "Hay $cont argumentos de 3 o mas caracteres"

