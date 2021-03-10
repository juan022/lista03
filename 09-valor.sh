#! /bin/bash
#
# @Juan Sánchez
#
# Mar 2021
#
# script 09 de la lista 03
#
# Descripcion: Escriure el codi que desa en les variables:opcions, cognom,
## edat i arguments els valors corresponents.
# --------------------------------------------------------------------------------------

# NO FUNCIONA

opciones=''
cognom=''
edat=''
arguments=''

while [ -n $1 ]
do
 case $1 in
 -r|-m|-j)
  opciones=$opciones $1;;
 -c)
  cognom=$2
  shift;;
 -e)
  edat=$2
  shift;;
 *)
  arguments=$arguments $1;;
 esac
 shift
done
echo "Opciones: $opciones"
echo "Cognom: $cognom"
echo "Edat: $edat"
echo "Arguments: $arguments"
