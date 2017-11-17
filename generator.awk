#!/usr/bin/awk -f
BEGIN{

}
NR>1 {
switch ($2){
case "preconfig":
print "./preconfig.sh >> ./output/"$1".txt\n"
break
case "sysname":
print "./sysname.sh "$3" >>./output/"$1".txt\n"
break
case "vlan":
print "./vlan.sh "$3" >>./output/"$1".txt\n"
break
case "access_port":
print "./access_port.sh "$3" "$4" "$5" >>./output/"$1".txt\n"
break
case "default_route":
print "./default_route.sh "$3" >>./output/"$1".txt\n"
break
case "ssh":
print "./ssh.sh "$3" "$4" >>./output/"$1".txt\n"
break
case "svi":
print "./svi.sh "$3" "$4" "$5" >>./output/"$1".txt\n"
break
case "linkaggr":
print "./linkaggr.sh "$3" "$4" "$5" "$6" >>./output/"$1".txt\n"
break
case "snmp":
print "./snmp.sh "$3" "$4" "$5" "$6" >>./output/"$1".txt\n"
break
case "static_route":
print "./static_route.sh "$3" "$4" "$5" >>./output/"$1".txt\n"
break
default:
print "#!!! "$1 " Error: " $2 "  not found."

}


}
END{


}
