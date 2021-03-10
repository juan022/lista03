#! /bin/bash
#
# @Juan Sánchez
#
# Mar 2021
#
# script 11 de la lista 03
#
# Descripcion: Gids por arg, mostrar por stdout gnome, gid  users
# --------------------------------------------------------------------------------------

for GID in $*
do
egrep .*:.*:$GID:.* /etc/group >> /dev/null
 if [ $? -eq 0 ]
 then
  info=$(egrep .*:.*:$GID:.* /etc/group)
  gname=$(echo $info | cut -d: -f1)
  gid=$(echo $info | cut -d: -f3)
  users=$(echo $info | cut -d: -f4)
  echo "GNAME: $gname"
  echo "GID: $gid"
  echo "USERS: $users"
 else
  echo "El GID $GID no existe"
 fi
done
