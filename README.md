make-ifcfg-eth
==============

This Bash script uses a loop to create ifcfg-eth network scripts for a full /24

Usage:

1. YOU MUST REPLACE THE ### IN THE BASH FOR LOOP WITH THE HIGHEST /24 FOURTH OCTET OF THE IP RANGE
2. YOU MUST ADD YOUR FIRST, SECOND AND THIRD OCTECTS OF YOUR /24 REPLACING xxx.yyy.zzz WITH THE CORRECT VALUES.  
3. YOU MUST ALSO REPLACE aaa.bbb.ccc.ddd WITH THE FULL GATEWAY.

