#!/bin/bash

#For each file
for i in *.nc;
do
   # Remove old coord variables
   ncks -C -O -x -v month ${i} ${i}
   ncks -C -O -x -v year ${i} ${i}
   #ncrename -v month,time ${i}
   # Attach coord variable "time" from LPJ
   ncks -A TTT.nc ${i}
   # Rename coord variables lon and lat
   ncrename -d lon,longitude -v lon,longitude ${i}
   ncrename -d lat,latitude -v lat,latitude ${i}
   # Add axes for coord variables lon and lat
   ncatted -O -a axis,longitude,c,c,'X' ${i}
   ncatted -O -a axis,latitude,c,c,'Y' ${i}

  # ncwa -a year ISAM_S2_rh_t_${i}.nc ISAM_S2_rh_${i}.nc
  # rm ISAM_S2_rh_t_${i}.nc
  # ncks --mk_rec_dmn time -O ISAM_S2_rh_${i}.nc ISAM_S2_rh_${i}.nc
  # flist=${flist}' ISAM_S2_rh_'${i}'.nc'
done
