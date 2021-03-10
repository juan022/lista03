#! /bin/bash
#
# @Juan Sánchez
#
# Mar 2021
#
# Ejercicio 07 de la lista 03
#
# Descripcion verificar que los 4 args sean del tipo que indica el flag
#
# prog -f|-d arg1 arg2 arg3 arg4
# ---------------------------------------------------------------------------------

# Verificar num args
if [ $# -ne 5 ];
then
 echo "Error: num args incorrecto"
 echo "Usage: $0 arg1 arg2 arg3 arg4"
 exit 1
fi

# Verificar que el $1 sea -f o -d
if [ $1 != -f -a $1 != -d ]
then
 echo "Error: $1 no valid"
 echo "Usage $0 -f|-d arg1 arg2 arg3 arg4"
 exit 1
fi

# Guardamos el tipo de file que queremos y shift para quitar el primer arg
tipo=$1
shift

#
for arg in $*
do
 if ! [ $tipo $arg ]
 then
  error=2
 fi
done
exit $error
