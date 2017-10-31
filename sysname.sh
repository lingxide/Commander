#!/bin/bash
if [[ $# -eq 1 ]]; then
echo -e "### Sysname Generator Start ###\n
sysname $1\n
### Sysname Generator End ###"
else
echo -e "\nSysname Generator Usage:\n
./sysname.sh {sysname}\n"
fi
