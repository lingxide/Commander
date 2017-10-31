#!/bin/bash
if [[ $# -ge 3 ]]; then
if [[ $# -eq 5 ]] && [[ $4 == "isolate" ]];then
echo -e "### Access Port Generator Start ###"
for ((i=$1;i<=$2;i++))
do
echo -e "interface $5${i}
 port access vlan $3
 exit\n"
done
echo -e "### Access Port Generator End ###"
else
echo -e "\n### Access Port Generator Start ###\n
int range $1 to $2\n
 port access vlan $3\n
### Access Port Generator End ###\n"
fi
else
echo -e "\nAccess Port Generator Usage:\n
./access_port.sh {port_range_start} {port_range_end} {access_vlanid} [isolate] [prefix]\n"
fi
