#!/bin/tcsh
# A collection of quick NCO concatenation manipulators
# Author: Shijie Shu
# Date: 03/31/2017

ncks --mk_rec_dmn year ISAM_S3_1988_landCoverFrac.nc 1988.nc
ncks --mk_rec_dmn year ISAM_S3_1989_landCoverFrac.nc 1989.nc
ncks --mk_rec_dmn year ISAM_S3_1990_landCoverFrac.nc 1900.nc
ncks --mk_rec_dmn year ISAM_S3_1991_landCoverFrac.nc 1991.nc
ncks --mk_rec_dmn year ISAM_S3_1992_landCoverFrac.nc 1992.nc
ncks --mk_rec_dmn year ISAM_S3_1993_landCoverFrac.nc 1993.nc
ncks --mk_rec_dmn year ISAM_S3_1994_landCoverFrac.nc 1994.nc
ncks --mk_rec_dmn year ISAM_S3_1995_landCoverFrac.nc 1995.nc
ncks --mk_rec_dmn year ISAM_S3_1996_landCoverFrac.nc 1996.nc
ncks --mk_rec_dmn year ISAM_S3_1997_landCoverFrac.nc 1997.nc
ncks --mk_rec_dmn year ISAM_S3_1998_landCoverFrac.nc 1998.nc
ncks --mk_rec_dmn year ISAM_S3_1999_landCoverFrac.nc 1999.nc
ncks --mk_rec_dmn year ISAM_S3_2000_landCoverFrac.nc 2000.nc
ncks --mk_rec_dmn year ISAM_S3_2001_landCoverFrac.nc 2001.nc
ncks --mk_rec_dmn year ISAM_S3_2002_landCoverFrac.nc 2002.nc
ncks --mk_rec_dmn year ISAM_S3_2003_landCoverFrac.nc 2003.nc
ncks --mk_rec_dmn year ISAM_S3_2004_landCoverFrac.nc 2004.nc
ncks --mk_rec_dmn year ISAM_S3_2005_landCoverFrac.nc 2005.nc
ncks --mk_rec_dmn year ISAM_S3_2006_landCoverFrac.nc 2006.nc
ncks --mk_rec_dmn year ISAM_S3_2007_landCoverFrac.nc 2007.nc
ncks --mk_rec_dmn year ISAM_S3_2008_landCoverFrac.nc 2008.nc
ncks --mk_rec_dmn year ISAM_S3_2009_landCoverFrac.nc 2009.nc
ncks --mk_rec_dmn year ISAM_S3_2010_landCoverFrac.nc 2010.nc
ncks --mk_rec_dmn year ISAM_S3_2011_landCoverFrac.nc 2011.nc
ncks --mk_rec_dmn year ISAM_S3_2012_landCoverFrac.nc 2012.nc
ncks --mk_rec_dmn year ISAM_S3_2013_landCoverFrac.nc 2013.nc

ncrcat 1988.nc 1989.nc 1990.nc 1991.nc 1992.nc 1993.nc 1994.nc 1995.nc 1996.nc 1997.nc 1998.nc 1999.nc 2000.nc 2001.nc 2002.nc 2003.nc 2004.nc 2005.nc 2006.nc 2007.nc 2008.nc 2009.nc 2010.nc 2011.nc 2012.nc 2013.nc ISAM_S3_landCoverFrac.nc

rm 1988.nc 1989.nc 1990.nc 1991.nc 1992.nc 1993.nc 1994.nc 1995.nc 1996.nc 1997.nc 1998.nc 1999.nc 2000.nc 2001.nc 2002.nc 2003.nc 2004.nc 2005.nc 2006.nc 2007.nc 2008.nc 2009.nc 2010.nc 2011.nc 2012.nc 2013.nc
