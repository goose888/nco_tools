#!/bin/bash

# Author: Shijie Shu
# Date: 09112017
# Note: Please load NCO and CDO before running this script

casename='1850'

# Reformat CESM output into ISAM input
# Loop over months
molist=("01" "02" "03" "04" "05" "06" "07" "08" "09" "10" "11" "12")
varlist=("TREFHT" "PS" "Q" "UU" "VV" "PRECmm" "FSDS" "FLDS")

# Get the file list for each month
flist=`ls -1 test_output6hrs.cam.h1.0001-*.nc`
numday=`ls -1 test_output6hrs.cam.h1.0001-*.nc | wc -l`
numframe=`expr $numday \* 4`
echo 'Now the month?'
echo $mo
echo 'How many days in this month?'
echo $numday
echo 'How many frames in total?'
echo $numframe

# Loop over files
for f in ${flist}
do
   echo 'Now processing file:'
   echo ${f}
   # Surface Air Temp: TREFHT
   # TREFHT is a "2 m temperature" or "near-surface air temperature." It is calculated 
   # by interpolation between the surface temperature and the lowest model level temperature.
   var='TREFHT'
   ncks -v ${var} -O ${f} ${var}_${f}
   ncks --mk_rec_dmn time -O ${var}_${f} ${var}_${f}

   # Surface pressure: PS
   var='PS'
   ncks -v ${var} -O ${f} ${var}_${f}
   ncks --mk_rec_dmn time -O ${var}_${f} ${var}_${f}

   # Specific humidity: Q
   var='Q'
   ncks -v ${var} -d lev,25,25 -O ${f} ${var}_${f}
   ncwa --overwrite -a lev ${var}_${f} ${var}_${f}
   ncks -C -O -x -v lev ${var}_${f} ${var}_${f}
   ncks --mk_rec_dmn time -O ${var}_${f} ${var}_${f}
   ncks --mk_rec_dmn time -O ${var}_${f} ${var}_${f}

   # Zonal wind speed at surface: sqrt(UU)
   var='UU'
   ncks -v ${var} -d lev,25,25 -O ${f} temp.nc
   ncwa --overwrite -a lev temp.nc temp.nc
   ncks -C -O -x -v lev temp.nc temp.nc
   ncap -s "${var}=sqrt(${var})" -O temp.nc ${var}_${f}
   rm temp.nc
   ncks --mk_rec_dmn time -O ${var}_${f} ${var}_${f}

   # Meridional wind speed at surface: sqrt(VV)
   var='VV'
   ncks -v ${var} -d lev,25,25 -O ${f} temp.nc
   ncwa --overwrite -a lev temp.nc temp.nc
   ncks -C -O -x -v lev temp.nc temp.nc
   ncap -s "${var}=sqrt(${var})" -O temp.nc ${var}_${f}
   rm temp.nc
   ncks --mk_rec_dmn time -O ${var}_${f} ${var}_${f}

   # Precipitation: PRECL + PRECC + PRECSC + PRECSL. Need to change unit: m s-1 -> mm s-1
   ncks -v PRECL,PRECC,PRECSC,PRECSL -O ${f} temp.nc
   ncap -s "PRECmm=(PRECL+PRECC+PRECSC+PRECSL)*1000.0" -O temp.nc PRECmm_${f}
   ncks -O -x -v PRECL,PRECC,PRECSC,PRECSL PRECmm_${f} PRECmm_${f}
   rm temp.nc
   ncks --mk_rec_dmn time -O PRECmm_${f} PRECmm_${f}

   # Income shortwave rad: FSDS
   var='FSDS'
   ncks -v ${var} -O ${f} ${var}_${f}
   ncks --mk_rec_dmn time -O ${var}_${f} ${var}_${f}

   # Income longwave rad: FLDS
   var='FLDS'
   ncks -v ${var} -O ${f} ${var}_${f}
   ncks --mk_rec_dmn time -O ${var}_${f} ${var}_${f}

done

# Combine each var into one file along time dimension
for v in ${varlist[@]}
do
   echo ${v}
   curflist=`ls ${v}*.nc | tr "\n" " "`
   ncrcat -O ${curflist} ${v}_${casename}.nc
   rm ${curflist}
   # Interpolate into half degree using CDO
   f="${v}_${casename}.nc"
   ncatted -a units,lon,m,c,degreeE -a units,lat,m,c,degreeS ${f}
   # ncatted -a coordinates,lw_down,m,c,lon lat ${f}
   # ncatted -a standard_name,lon,m,c,grid_longitude -a standard_name,lat,m,c,grid_latitude ${f}
   ncatted -a standard_name,lon,c,c,grid_longitude -a standard_name,lat,c,c,grid_latitude ${f}
   cdo remapdis,mygrid ${f} interped_${f}
   mv interped_${f} ${f}
done

# Tailor the climate forcing near land-ocean boarder
./compile00.sh
if [ -d "$DIRECTORY" ]; then
   echo 'Directory out_check_cesm already exist!'
else
   mkdir out_check_cesm
fi
./prs2015 < namelist.1850 > prs1850.log

# Rename and change attribute?
# No need to modify any attribute right now

##### END OF THE SCRIPT ######
