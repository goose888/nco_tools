#!/bin/tcsh
# A collection of quick NCO averaging manipulators
# Author: Shijie Shu
# Date: 02/09/2017

ncks --mk_rec_dmn month ISAM_S3_1998_tsl.nc xxx.nc
ncra -d month,0,11 xxx.nc ISAM_S3_1998_annual_mean_tsl.nc
rm xxx.nc
# ncwa -a soil_depth -d soil_depth,0,4 -w depths

ncks --mk_rec_dmn month ISAM_S3_1999_tsl.nc xxx.nc
ncra -d month,0,11 xxx.nc ISAM_S3_1999_annual_mean_tsl.nc
rm xxx.nc

ncks --mk_rec_dmn month ISAM_S3_2000_tsl.nc xxx.nc
ncra -d month,0,11 xxx.nc ISAM_S3_2000_annual_mean_tsl.nc
rm xxx.nc

ncks --mk_rec_dmn month ISAM_S3_2001_tsl.nc xxx.nc
ncra -d month,0,11 xxx.nc ISAM_S3_2001_annual_mean_tsl.nc
rm xxx.nc

ncks --mk_rec_dmn month ISAM_S3_2002_tsl.nc xxx.nc
ncra -d month,0,11 xxx.nc ISAM_S3_2002_annual_mean_tsl.nc
rm xxx.nc

ncea ISAM_S3_1998_annual_mean_tsl.nc ISAM_S3_1999_annual_mean_tsl.nc ISAM_S3_2000_annual_mean_tsl.nc ISAM_S3_2001_annual_mean_tsl.nc ISAM_S3_2002_annual_mean_tsl.nc ISAM_S3_1998_2002_annual_mean_tsl.nc
