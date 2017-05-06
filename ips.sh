#!/usr/bin/env bash

dns=`cat /etc/resolv.conf | grep nameserver | cut -d " " -f 2`
gw=`ip route show | grep default | awk {'print $3'}`
nic=`ifconfig |grep Link | sed 's/\s\+/,/g' | cut -d "," -f 1`
PIP=`curl -s ifconfig.io`

for i in $nic; do
  ip=`ifconfig $i | grep inet | cut -d ":" -f 2 | sed 's/\s\+/,/g' | cut -d "," -f 1`
  mac=`ifconfig | grep $i | sed 's/\s\+/,/g' | cut -d "," -f 5`
  echo -e "$i --> IP: $ip MAC: $mac \n"


done

echo -e "Public IP --> $PIP \n"

echo "RED --> DNS:$dns Gateway:$gw"
