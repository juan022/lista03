#! /bin/bash
#
# @Juan Sánchez
#
# Marzo 2021
#
# ejercicio 6 de la lista 03
#
# Descripcion: Processar per stdin línies d’entrada tipus “Tom Snyder”
## i mostrar per stdout la línia en format → T. Snyder.


while read -r line
do
 nombre=$line
 nom=$(echo $nombre | cut -c1)
 apellido=$(echo $nombre | cut -d' ' -f2)
 echo "$nom. $apellido"
done
