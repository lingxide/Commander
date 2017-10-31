#/bin/bash
if [[ $# -eq 1 ]]; then
echo -e "### Default Route Generator Start ###\n
ip route-static 0.0.0.0 0.0.0.0 $1\n
### Default Route Generator End ###\n"
else
echo -e "\nDefault Route Generator Usage:\n
./default_route.sh {gateway}\n"
fi
