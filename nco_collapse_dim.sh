#!/bin/bash
ncrename -d month,time ISAM_S2_gpp.nc
#For each file
for i in `seq 0 1`;
do
   ncks -d year,${i},${i} ISAM_S2_gpp.nc ISAM_S2_gpp_t_${i}.nc
   ncwa -a year ISAM_S2_gpp_t_${i}.nc ISAM_S2_gpp_${i}.nc
   rm ISAM_S2_gpp_t_${i}.nc
   ncks --mk_rec_dmn time -O ISAM_S2_gpp_${i}.nc ISAM_S2_gpp_${i}.nc
   flist=${flist}' ISAM_S2_gpp_'${i}'.nc'
done
ncrcat -h ${flist} ISAM_S2_gpp_new.nc
rm ${flist}
