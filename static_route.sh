#!/bin/bash
if [[ $# -eq 3 ]];then
echo -e "### Static Route Generator Start ###\n
 ip route-static $1 $2 $3\n
### Static Route Generator End ###"
else
echo -e "\n Static Route Generator Usage:\n
./static_route.sh {network} {netmask} {nexthop}\n"
fi
