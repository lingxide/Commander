#/bin/bash
if [[ $# -eq 3 ]]; then
echo -e "### SVI Generator Start ###\n
interface Vlan-interface$1\n
 ip address $2 $3\n
 quit\n
### SVI Generator End ###\n
"
else
echo -e "\nSVI Generator Usage:\n
./svi.sh {svi_id} {svi_ip} {svi_netmask}\n"
fi
