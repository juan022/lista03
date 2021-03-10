#! /bin/bash
#
# @Juan Sánchez
#
# Mar 2021
#
# script 12 de la lsita 03
#
# Descripcion: Mostrar en formato logid(udi) gname home shell la info del uid intro por arg
# -------------------------------------------------------------------------------------------

for arg in $*
do
 egrep .*:.*:$arg:.* /etc/passwd >> /dev/null
 if [ $? -eq 0 ]
 then
  info=$(egrep .*:.*:$arg:.* /etc/passwd)
  logid=$(echo $info | cut -d: -f1)
  uid=$arg
  gid=$(echo $info | cut -d: -f4)
  gname=$(egrep .*:.*:$gid:.* /etc/group | cut -d: -f1)
  home=$(echo $info | cut -d: -f6)
  shell=$(echo $info | cut -d: -f7)
  echo "$logid($uid) $gname $home $shell"
 else
  echo "Error $arg no es un uid valid" >> /dev/stderr
 fi
done
exit 0
