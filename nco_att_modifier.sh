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

# Example 2
# More exmaple for the attribute modifier
NCO_PATH=/software/dev_tools/swtree/cs400_centos7.2_pe2016-08/nco/4.6.4/centos7.2_gnu5.3.0/bin

flist=`ls -1 ISAM_S0*.nc`
for i in ${flist}; do
  ${NCO_PATH}/ncrename -h -d lon,longitude -v lon,longitude ${i}
  ${NCO_PATH}/ncrename -h -d lat,latitude -v lat,latitude ${i}
  ${NCO_PATH}/ncatted -h -O -a axis,longitude,c,c,'X' ${i}
  ${NCO_PATH}/ncatted -h -O -a axis,latitude,c,c,'Y' ${i}
  ${NCO_PATH}/ncatted -h -O -a calendar,time,c,c,'noleap' ${i}
  ${NCO_PATH}/ncatted -h -O -a title,global,o,c,"Leaf Carbon output from ISAM for Trendy_v7/GCP2018" ${i}
  ${NCO_PATH}/ncatted -h -O -a institution,global,o,c,"Department of Atmospheric Sciences, University of Illinois" ${i}
  ${NCO_PATH}/ncatted -h -O -a source,global,c,c,"Extracted from ISAM SG0 output Global_dveg_SG0.ISAM.nc for Trendy_v7/GCP2018" ${i}
  ${NCO_PATH}/ncatted -h -O -a contact,global,o,c,"Atul Jain, jain1@illinois.edu; Shijie Shu, sshu3@illinois.edu" ${i}
  ${NCO_PATH}/ncatted -h -O -a Conventions,global,c,c,"CF-1.0" ${i}
  ${NCO_PATH}/ncatted -h -O -a version,,d,, ${i}
  ${NCO_PATH}/ncatted -h -O -a NCO,,d,, ${i}
  ${NCO_PATH}/ncatted -h -O -a history_of_appended_files,,d,, ${i}
done
