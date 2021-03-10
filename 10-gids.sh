#!  /bin/bash
#
# @Juan Sánchez
#
# script 10 de la lista 03
#
# Descripcion: llista per stdout la informació de cada un d’aquests grups, en
## format: gname: GNAME, gid: GID, users: USERS

while read -r line
do
 egrep .*:.*:$line:.* /etc/group >> /dev/null
 if [ $? -eq 0 ]
 then
  info=$(egrep .*:.*:$line:.* /etc/group)
  gname=$(echo $info | cut -d: -f1)
  gid=$(echo $info | cut -d: -f3)
  users=$(echo $info | cut -d: -f4)
  echo "GNAME: $gname"
  echo "GID: $gid"
  echo "USERS: $users"
 else
  echo "El GID $line no existe"
 fi
done

