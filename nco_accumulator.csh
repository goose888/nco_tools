#!/bin/tcsh
# A collection of quick NCO manipulators
# Author: Shijie Shu
# Date: 02/09/2017

ncks --mk_rec_dmn month ISAM_S3_1998_tsl.nc xxx.nc
ncra -h -O -y ttl xxx.nc ISAM_S3_1998_annual_total_tsl.nc
rm xxx.nc
# ncwa -a soil_depth -d soil_depth,0,4 -w depths
