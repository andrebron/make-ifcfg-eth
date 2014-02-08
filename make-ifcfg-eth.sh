#!/bin/bash

# This bash loop script facilitates creating up to a full /24 of ifcfg-eth0:$ interface configuration scripts for yum distributions.
# It will create all the scripts sequentially from the first script as xxx.yyy.zzz.### up to one full /24

# VARIABLES MUST BE SUPPLEMENTED TO SUIT YOUR NEEDS.

# DISCLAIMER:  

# IF YOU ALREADY HAVE INTERFACE SCRIPTS STARTING WITH 'ifcfg-eth0:1, YOU MUST REPLACE THE '1' (in i=1) WITH THE NUMBER YOU WOULD LIKE TO START CREATING INTERFACES WITH (ifcfg-eth0:#) WHICH IS EQUAL TO THE 4TH OCTECT OF THE IP ADDRESS FOR THAT INTERFACE. THE 'i' VARIABLE (number 1 in this case) IS THE STARTING POINT FOR THE  INTERFACE NAME AND FOURTH OCTECT OF THE /24 IP ADDRESS.

# USING THIS SCRIPT INCORRECTLY CAN OVERWRITE INTERFACES.  THIS IS SPECIALLY TRUE WITH AN OS WITH MORE THAN ONE INTERFACE SCRIPT (ifcfg-eth0)

# TO AVOID THESE ISSUES, YOU CAN MODIFIY THIS SCRIPT'S 'ifcfg-eth0:$1' TO USE 'ifcfg-eth0:0:$1' OR 'ifcfg-eth0:zzz:$1' WHERE 'zzz' IS THE 3rd OCTECT OF YOUR /24.

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
