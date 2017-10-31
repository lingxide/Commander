#!/bin/bash
if [[ $# -gt 0 ]]; then
echo -e "### Vlan Generator Start ###\n"
for ((i=1;i<=$#;i++))
do
 echo -e "vlan ${!i}\n"
done
echo -e "### Vlan Generator End ###\n"
else
 echo -e "Vlan Generator Usage: \n \
./vlan.sh {id1 id2 id3 \"id4 to id5\"...}
"
fi
