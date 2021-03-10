#! /bin/bash
# @Juan Sánchez
#
# Mar 2021
#
# Ejercicio: srcipt 08 de la lista 03
#
# Descripcion; comprm¡imir un file si se puede , mostrar nombre del file comprimido >> stdout,
## mensaje de error si no >> stderr, cuantos se han comprimido, 0, 1, 2 >> stdout
#
# prog file[...]
# ---------------------------------------------------------------------------------------------
if [ $# -ne 4 ]
then
 echo "Error num args no valid"
 echo "Usage: $0 file1 file2 file3 file4"
 exit 1
fi

for file in $*
do
 if [ ! -e $file ]
 then
  echo "El $file no existe"
 fi
done

cont=0
status=0
for file in $*
do
 zip $file.zip $file &> /dev/null
 if [ $? -eq 0 ]
 then
  echo "$file.zip"
  cont=$((cont+1))
 elif [ $? -ne 0 ]
 then
  echo "El file $file no se puede comprimir" >> /dev/stderr
  status=2
 fi
done
echo $cont
exit $status
