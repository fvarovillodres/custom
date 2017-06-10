#!/usr/bin/env bash

dns=`cat /etc/resolv.conf | grep nameserver | cut -d " " -f 2`
gw=`ip route show | grep default | awk {'print $3'}`
nic=`ifconfig |grep flags | sed 's/\s\+/,/g' | cut -d "," -f 1 | tr -d :`
PIP=`curl -s ifconfig.io`

for i in $nic; do
  ip=`ifconfig $i | grep -e 'inet' | grep -v inet6 | awk '{ print $2 }'`
  mac=`ifconfig $i | grep ether | awk '{ print $2 }'`
  echo -e "$i --> IP: $ip MAC: $mac \n"


done

echo -e "Public IP --> $PIP \n"

echo "RED --> DNS:$dns Gateway:$gw"
