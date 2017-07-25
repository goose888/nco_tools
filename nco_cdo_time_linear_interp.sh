#!/bin/bash
# Interpolate the HYDE land use data
# start from 1760 to 2000
for i in `seq 1760 10 2000`;
do
   ncks -d TIME,${i}. landuse_hyde32_gcp2017_halfdeg.nc TIME${i}.nc
done
for i in `seq 2001 2017`;
do
   ncks -d TIME,${i}. landuse_hyde32_gcp2017_halfdeg.nc TIME${i}.nc
done
for i in `seq 1760 10 1990`;
do
   beg=`expr $i + 1`
   end=`expr $i + 9`
   j=`expr $i + 10`
   text=`seq -s , ${beg} ${end}`
   cdo intyear,${text} TIME${i}.nc TIME${j}.nc TIME
done
# Concatenate all multi-decadal files to single file for historical period
ncrcat -O TIME*.nc landuse_hyde32_halfdeg.nc
# Clean temporary file
rm TIME*.nc
