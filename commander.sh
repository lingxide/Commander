#!/bin/bash
V1=$1
V2=$2
if [ ! -n $V1 ]; then
echo -e "\nCommander Usage: \n
./commander.sh {input-file.csv}\n" && exit;
fi
: > .tmp
rm -rf ./output/*
gawk -F, -f generator.awk $V1 | tee .tmp
chmod +x ./.tmp
bash ./.tmp | tee -
if [ $? -ne 0 ]; then
echo -e "Something goes wrong during executing generator bash.\n
Please check .tmp log.\n"
else
: > .tmp
fi
