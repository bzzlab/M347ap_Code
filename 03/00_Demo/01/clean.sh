#!/bin/bash
#
TEMP=tmp.sh
# change here to remove dummy tags (like #??) in the script
declare -a fileArray=($(ls 0{1..3}*.sh))

for file in "${fileArray[@]}"
do
  echo "Removing #?? in ${file} ..."
  cp -f ${file} ${TEMP}
  cat ${TEMP} | sed 's/ #??//' > ${file}
done
rm ${TEMP} 2>/dev/null