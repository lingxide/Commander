#/bin/bash
if [[ $# -ge 3 ]]; then
echo -e "### SNMP Generator Start ###\n
snmp-agent sys-info version $1\n
snmp-agent community read $3\n"
[[ $# -eq 4 ]] && echo -e "snmp-agent community write $4\n"
echo -e "snmp-agent trap enable\n
snmp-agent target-host trap address udp-domain $2 params securityname $3 $1\n
### SNMP Generator End ###\n"
else
echo -e "\nSNMP Generator Usage:\n
./snmp.sh {snmp_version} {trap_ip} {public_community} [private_community]\n"
fi
