#!/bin/bash
if [[ $# -eq 4 ]]; then
echo -e "### Link Aggregation Generator Start ###\n
int bri $1\n
 link-aggregation mode dynamic\n
 port link-type trunk\n
 undo port trunk permit vlan 1\n
 port trunk permit vlan $2\n
#\n\n
int range $3 to $4\n
 port link-type trunk\n
 undo port trunk permit vlan 1\n
 port trunk permit vlan $2\n
 port link-agg group $1\n
 quit\n
### Link Aggregation Generator End ###\n
"
else
echo -e "\nLink Aggregation Generator Usage:\n
./linkaggr {aggr_id} {aggr_vlan} {port_range_start} {port_range_stop}\n"
fi
