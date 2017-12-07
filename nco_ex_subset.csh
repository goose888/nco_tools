#!/bin/tcsh
# A collection of quick NCO averaging manipulators
# Author: Shijie Shu
# Date: 06/25/2017

ncks -v crops -d time,150,269 GLANDCOVER_HIST-halfdeg.nc GLANDCOVER_HIST-halfdeg_crops.nc
ncks -v pasture -d time,150,269 GLANDCOVER_HIST-halfdeg.nc GLANDCOVER_HIST-halfdeg_pasture.nc
ncks -v urban -d time,150,269 GLANDCOVER_HIST-halfdeg.nc GLANDCOVER_HIST-halfdeg_urban.nc
ncks -v forests -d time,150,269 GLANDCOVER_HIST-halfdeg.nc GLANDCOVER_HIST-halfdeg_forest.nc
ncks -v other_natural -d time,150,269 GLANDCOVER_HIST-halfdeg.nc GLANDCOVER_HIST-halfdeg_other.nc


