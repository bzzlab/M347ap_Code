#!/bin/bash
#
LIB='../../bin/prep-lib.sh'
if [ ! -f $LIB ]; then      #??
  echo $LIB does not exist! #??
  exit 2                    #??
fi                          #??
source $LIB
#----------------------------------------
if test $# -lt 1; then
  printf "%s\n" \
    "Error: Provide at least 1 argument:" \
    "Prep number n" \
    "Exit script."
  exit 1
fi

DEST="../00_Demo"

case $1 in
0)
  createTargetDir "${DEST}"
  declare -a fileArray=($(ls *.conf))
  for file in "${fileArray[@]}"
  do
      cp ${file} "${DEST}/${file}"
  done
  ;;
1)
  declare -a fileArray=($(ls 0*_*.sh;ls *_dockerfile; ls td*.sh))
  for file in "${fileArray[@]}"
  do
      removeSolution ${file} "${DEST}/${file}"
  done
  ;;
*)
  echo "Incorrect choice entered!"
  ;;
esac
