make-ifcfg-eth
==============

This bash loop script facilitates creating up to a full /24 (or less) of ifcfg-eth0:$ interface configuration scripts for yum distributions.

It will create all the scripts sequentially from the first script as xxx.yyy.zzz.### up to one full /24

VARIABLES MUST BE SUPPLEMENTED TO SUIT YOUR NEEDS.

IMPORTANT DISCLAIMER / CAVEATS:  

USING THIS SCRIPT INCORRECTLY CAN OVERWRITE INTERFACES.  THIS IS SPECIALLY TRUE WITH AN OS THAT ALREADY HAS MORE THAN ONE INTERFACE SCRIPT FOR eth0 ALREADY (ifcfg-eth0:1, ifcfg-eth0:2, etc)

TO AVOID THESE ISSUES, YOU CAN MODIFY THIS SCRIPT'S 'ifcfg-eth0:$1' TO USE 'ifcfg-eth0:0:$1' OR 'ifcfg-eth0:zzz:$1' WHERE 'zzz' IS THE 3rd OCTECT OF YOUR /24.

INSTRUCTIONS FOR AN OS THAT CURRENTLY ONLY HAS 1 INTERFACE SCRIPT FOR 'eth0' ALSO KNOWN AS 'ifcfg-eth0':

1. YOU MUST REPLACE THE ### IN THE BASH FOR LOOP WITH THE HIGHEST /24 FOURTH OCTET OF THE IP RANGE
2. YOU MUST ADD YOUR FIRST, SECOND AND THIRD OCTECTS OF YOUR /24 REPLACING xxx.yyy.zzz WITH THE CORRECT VALUES.  
3. YOU MUST ALSO REPLACE aaa.bbb.ccc.ddd WITH THE FULL GATEWAY.

INSTRUCTIONS FOR AN OS THAT ALREADY HAS MORE THAN ONE INTERFACE SCRIPT FOR eth0 ALREADY (ifcfg-eth0:1, ifcfg-eth0:2, etc):

1. YOU MUST REPLACE THE ### IN THE BASH FOR LOOP WITH THE HIGHEST /24 FOURTH OCTET OF THE IP RANGE
2. YOU MUST MODIFY THIS SCRIPT'S 'ifcfg-eth0:$1' TO USE 'ifcfg-eth0:0:$1', A VARIATION OF THIS, OR 'ifcfg-eth0:zzz:$1' WHERE 'zzz' IS THE 3rd OCTECT OF YOUR /24.
3. YOU MUST ADD YOUR FIRST, SECOND AND THIRD OCTECTS OF YOUR /24 REPLACING xxx.yyy.zzz WITH THE CORRECT VALUES.  
4. YOU MUST ALSO REPLACE aaa.bbb.ccc.ddd WITH THE FULL GATEWAY.

ENJOY!



