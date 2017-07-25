#!/bin/bash
#module load gnu/cdo-1.7.1-gnu-4.4.7
for i in *.nc;
do
   cp ${i} ./processed
   cd ./processed
   ncatted -a units,longitude,m,c,degreeE -a units,latitude,m,c,degreeS ${i}
   ncatted -a coordinates,crops,m,c,longitude latitude ${i}
   ncatted -a coordinates,pasture,m,c,longitude latitude ${i}
   ncatted -a coordinates,forests,m,c,longitude latitude ${i}
   ncatted -a coordinates,other_natural,m,c,longitude latitude ${i}
   ncatted -a coordinates,urban,m,c,longitude latitude ${i}
   ncatted -a standard_name,longitude,c,c,grid_longitude -a standard_name,latitude,c,c,grid_latitude ${i}
#   ncatted -a long_name,lon,c,c,longitude -a long_name,lat,c,c,latitude ${i}
   cdo remapycon,mygrid ${i} interped_${i}
   mv interped_${i} ${i}
   cd ..
done
