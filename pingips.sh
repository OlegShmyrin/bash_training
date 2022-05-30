#!/bin/bash
#To find cative IP addresses in subnet
if [ $1 == '' ]
then
    echo "Enter IP network in format: pingips.sh 192.168.0"
else
        for ip in $(seq 1 254);
    do
         ping $1.$ip -c 1 | grep "64 bytes" | cut -d " " -f 4 | cut -d ":" -f 1 &
    done
fi
