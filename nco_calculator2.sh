#!/bin/bash
# NCO calculator
for i in *.nc;
do
   # Transfer unit from kgC/m2/month to kgC/m2/s
   ncap2 -O -S mo2s.nco ${i} ${i}
   #ncatted -O -a units,gpp,m,c,'kg C m-2 s-1' ${i}

done

