#!/bin/bash
module load gnu/cdo-1.7.1-gnu-4.4.7
for i in *.nc;
do
   cp ${i} ./processed
   cd ./processed
   ncatted -a units,lon,m,c,degreeE -a units,lat,m,c,degreeS ${i}
   ncatted -a coordinates,lw_down,m,c,lon lat ${i}
   ncatted -a standard_name,lon,m,c,grid_longitude -a standard_name,lat,m,c,grid_latitude ${i}
   ncatted -a standard_name,lon,c,c,grid_longitude -a standard_name,lat,c,c,grid_latitude ${i}
   ncatted -a long_name,lon,c,c,longitude -a long_name,lat,c,c,latitude ${i}
   cdo remapdis,mygrid ${i} interped_${i}
   mv interped_${i} ${i}
   cd ..
done
