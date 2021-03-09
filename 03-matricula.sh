#! /bin/bash
# @Juan Sánchez
# 
# Feb 2021
#
# Ejercicio 3 de la lista 03
#
# Descripcion: Procesar matricula, 1234-ABC, mostrar validas -> tdout, novalidas -> stderr
#              Status -> numero de errores, matriculas no validas
# --------------------------------------------------------------------------------------------

MATRICULA=^[0-9]{4}-[A-Z]{3}$
cant_errores=0
for arg in $*
do
 echo $arg | egrep -w $MATRICULA 2> /dev/null
 if [ $? -ne 0 ]
 then
  echo "Error: la matricula $arg no es valida" >> /dev/stderr
  cant_errores=$(($cant_errores+1))
 fi
done
exit $cant_errores
