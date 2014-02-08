#!/bin/bash

# This bash loop script facilitates creating up to a full /24 of ifcfg-eth0:$ network configuration scripts for yum distributions.

# VARIABLES MUST BE SUPPLEMENTED TO SUIT YOUR NEEDS.

# It will create all the scripts sequentially from the first script as xxx.yyy.zzz.### up to one full /24

# You can also replace the 1 (in i=1)  with the starting fourth octect for the sequence. The i variable (number 1 in this case) is the starting point for the sequence.

# 1. YOU MUST REPLACE THE ### IN THIS SECTION WITH THE HIGHEST /24 FOURTH OCTET OF THE IP RANGE

for ((i=1;i<=###;i++))

do

touch /etc/sysconfig/network-scripts/ifcfg-eth0:$i

# 2. YOU MUST ADD YOUR FIRST, SECOND AND THIRD OCTECTS OF YOUR /24 REPLACING xxx.yyy.zzz WITH THE CORRECT VALUES.
# 3. YOU MUST ALSO REPLACE aaa.bbb.ccc.ddd WITH THE FULL GATEWAY.

echo "DEVICE=eth0:$i
BOOTPROTO=static
ONBOOT=yes
IPADDR=xxx.yyy.zzz.$i
GATEWAY=aaa.bbb.ccc.ddd
NETMASK=255.255.255.0" > /etc/sysconfig/network-scripts/ifcfg-eth0:$i

done
