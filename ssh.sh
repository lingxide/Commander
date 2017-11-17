#!/bin/bash
if [[ $# -eq 2 ]]; then
echo -e "\n### SSH Generator Start ###\n
local-user $1 class manage\n
 password simple $2\n
 service-type ssh\n
 authorization-attribute user-role network-admin\n
#\n
quit\n
ssh server enable\n
#\n
line vty 0 63\n
authentication-mode scheme\n
#\n
### SSH Generator End ###\n
"
else
echo -e "
\nSSH Generator Usage: \n
./ssh.sh {username} {password}\n
"
fi
