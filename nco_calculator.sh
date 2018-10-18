#!/bin/bash

ncap2 -s 'YEAR=array(1850,1,$time)' landuse.timeseries_0.9x1.25_hist_simyr1850-2005_c181008.nc new.nc

ncks -A rainfall_1850.nc snowfall_1850.nc
ncks -A rainfall_1851.nc snowfall_1851.nc
ncks -A rainfall_1852.nc snowfall_1852.nc
ncks -A rainfall_1853.nc snowfall_1853.nc
ncks -A rainfall_1854.nc snowfall_1854.nc
ncks -A rainfall_1855.nc snowfall_1855.nc
ncks -A rainfall_1856.nc snowfall_1856.nc
ncks -A rainfall_1857.nc snowfall_1857.nc
ncks -A rainfall_1858.nc snowfall_1858.nc
ncks -A rainfall_1859.nc snowfall_1859.nc
ncks -A rainfall_1860.nc snowfall_1860.nc
ncks -A rainfall_1861.nc snowfall_1861.nc
ncks -A rainfall_1862.nc snowfall_1862.nc
ncks -A rainfall_1863.nc snowfall_1863.nc
ncks -A rainfall_1864.nc snowfall_1864.nc
ncks -A rainfall_1865.nc snowfall_1865.nc
ncks -A rainfall_1866.nc snowfall_1866.nc
ncks -A rainfall_1867.nc snowfall_1867.nc
ncks -A rainfall_1868.nc snowfall_1868.nc
ncks -A rainfall_1869.nc snowfall_1869.nc
ncks -A rainfall_1870.nc snowfall_1870.nc

ncap2 -s 'prec=snowfall+rainfall' snowfall_1850.nc preci_1850.nc
ncap2 -s 'prec=snowfall+rainfall' snowfall_1851.nc preci_1851.nc
ncap2 -s 'prec=snowfall+rainfall' snowfall_1852.nc preci_1852.nc
ncap2 -s 'prec=snowfall+rainfall' snowfall_1853.nc preci_1853.nc
ncap2 -s 'prec=snowfall+rainfall' snowfall_1854.nc preci_1854.nc
ncap2 -s 'prec=snowfall+rainfall' snowfall_1855.nc preci_1855.nc
ncap2 -s 'prec=snowfall+rainfall' snowfall_1856.nc preci_1856.nc
ncap2 -s 'prec=snowfall+rainfall' snowfall_1857.nc preci_1857.nc
ncap2 -s 'prec=snowfall+rainfall' snowfall_1858.nc preci_1858.nc
ncap2 -s 'prec=snowfall+rainfall' snowfall_1859.nc preci_1859.nc
ncap2 -s 'prec=snowfall+rainfall' snowfall_1860.nc preci_1860.nc
ncap2 -s 'prec=snowfall+rainfall' snowfall_1861.nc preci_1861.nc
ncap2 -s 'prec=snowfall+rainfall' snowfall_1862.nc preci_1862.nc
ncap2 -s 'prec=snowfall+rainfall' snowfall_1863.nc preci_1863.nc
ncap2 -s 'prec=snowfall+rainfall' snowfall_1864.nc preci_1864.nc
ncap2 -s 'prec=snowfall+rainfall' snowfall_1865.nc preci_1865.nc
ncap2 -s 'prec=snowfall+rainfall' snowfall_1866.nc preci_1866.nc
ncap2 -s 'prec=snowfall+rainfall' snowfall_1867.nc preci_1867.nc
ncap2 -s 'prec=snowfall+rainfall' snowfall_1868.nc preci_1868.nc
ncap2 -s 'prec=snowfall+rainfall' snowfall_1869.nc preci_1869.nc
ncap2 -s 'prec=snowfall+rainfall' snowfall_1870.nc preci_1870.nc

ncks -v prec preci_1850.nc prec_1850.nc
ncks -v prec preci_1851.nc prec_1851.nc
ncks -v prec preci_1852.nc prec_1852.nc
ncks -v prec preci_1853.nc prec_1853.nc
ncks -v prec preci_1854.nc prec_1854.nc
ncks -v prec preci_1855.nc prec_1855.nc
ncks -v prec preci_1856.nc prec_1856.nc
ncks -v prec preci_1857.nc prec_1857.nc
ncks -v prec preci_1858.nc prec_1858.nc
ncks -v prec preci_1859.nc prec_1859.nc
ncks -v prec preci_1860.nc prec_1860.nc
ncks -v prec preci_1861.nc prec_1861.nc
ncks -v prec preci_1862.nc prec_1862.nc
ncks -v prec preci_1863.nc prec_1863.nc
ncks -v prec preci_1864.nc prec_1864.nc
ncks -v prec preci_1865.nc prec_1865.nc
ncks -v prec preci_1866.nc prec_1866.nc
ncks -v prec preci_1867.nc prec_1867.nc
ncks -v prec preci_1868.nc prec_1868.nc
ncks -v prec preci_1869.nc prec_1869.nc
ncks -v prec preci_1870.nc prec_1870.nc

rm preci_*.nc

ncap2 -s 'uwind=wind/sqrt(2)' wind_1850.nc tempu_1850.nc
ncap2 -s 'uwind=wind/sqrt(2)' wind_1851.nc tempu_1851.nc
ncap2 -s 'uwind=wind/sqrt(2)' wind_1852.nc tempu_1852.nc
ncap2 -s 'uwind=wind/sqrt(2)' wind_1853.nc tempu_1853.nc
ncap2 -s 'uwind=wind/sqrt(2)' wind_1854.nc tempu_1854.nc
ncap2 -s 'uwind=wind/sqrt(2)' wind_1855.nc tempu_1855.nc
ncap2 -s 'uwind=wind/sqrt(2)' wind_1856.nc tempu_1856.nc
ncap2 -s 'uwind=wind/sqrt(2)' wind_1857.nc tempu_1857.nc
ncap2 -s 'uwind=wind/sqrt(2)' wind_1858.nc tempu_1858.nc
ncap2 -s 'uwind=wind/sqrt(2)' wind_1859.nc tempu_1859.nc
ncap2 -s 'uwind=wind/sqrt(2)' wind_1860.nc tempu_1860.nc
ncap2 -s 'uwind=wind/sqrt(2)' wind_1861.nc tempu_1861.nc
ncap2 -s 'uwind=wind/sqrt(2)' wind_1862.nc tempu_1862.nc
ncap2 -s 'uwind=wind/sqrt(2)' wind_1863.nc tempu_1863.nc
ncap2 -s 'uwind=wind/sqrt(2)' wind_1864.nc tempu_1864.nc
ncap2 -s 'uwind=wind/sqrt(2)' wind_1865.nc tempu_1865.nc
ncap2 -s 'uwind=wind/sqrt(2)' wind_1866.nc tempu_1866.nc
ncap2 -s 'uwind=wind/sqrt(2)' wind_1867.nc tempu_1867.nc
ncap2 -s 'uwind=wind/sqrt(2)' wind_1868.nc tempu_1868.nc
ncap2 -s 'uwind=wind/sqrt(2)' wind_1869.nc tempu_1869.nc
ncap2 -s 'uwind=wind/sqrt(2)' wind_1870.nc tempu_1870.nc

ncks -v uwind tempu_1850.nc uwind_1850.nc
ncks -v uwind tempu_1851.nc uwind_1851.nc
ncks -v uwind tempu_1852.nc uwind_1852.nc
ncks -v uwind tempu_1853.nc uwind_1853.nc
ncks -v uwind tempu_1854.nc uwind_1854.nc
ncks -v uwind tempu_1855.nc uwind_1855.nc
ncks -v uwind tempu_1856.nc uwind_1856.nc
ncks -v uwind tempu_1857.nc uwind_1857.nc
ncks -v uwind tempu_1858.nc uwind_1858.nc
ncks -v uwind tempu_1859.nc uwind_1859.nc
ncks -v uwind tempu_1860.nc uwind_1860.nc
ncks -v uwind tempu_1861.nc uwind_1861.nc
ncks -v uwind tempu_1862.nc uwind_1862.nc
ncks -v uwind tempu_1863.nc uwind_1863.nc
ncks -v uwind tempu_1864.nc uwind_1864.nc
ncks -v uwind tempu_1865.nc uwind_1865.nc
ncks -v uwind tempu_1866.nc uwind_1866.nc
ncks -v uwind tempu_1867.nc uwind_1867.nc
ncks -v uwind tempu_1868.nc uwind_1868.nc
ncks -v uwind tempu_1869.nc uwind_1869.nc
ncks -v uwind tempu_1870.nc uwind_1870.nc

rm tempu_*.nc

ncap2 -s 'vwind=wind/sqrt(2)' wind_1850.nc tempv_1850.nc
ncap2 -s 'vwind=wind/sqrt(2)' wind_1851.nc tempv_1851.nc
ncap2 -s 'vwind=wind/sqrt(2)' wind_1852.nc tempv_1852.nc
ncap2 -s 'vwind=wind/sqrt(2)' wind_1853.nc tempv_1853.nc
ncap2 -s 'vwind=wind/sqrt(2)' wind_1854.nc tempv_1854.nc
ncap2 -s 'vwind=wind/sqrt(2)' wind_1855.nc tempv_1855.nc
ncap2 -s 'vwind=wind/sqrt(2)' wind_1856.nc tempv_1856.nc
ncap2 -s 'vwind=wind/sqrt(2)' wind_1857.nc tempv_1857.nc
ncap2 -s 'vwind=wind/sqrt(2)' wind_1858.nc tempv_1858.nc
ncap2 -s 'vwind=wind/sqrt(2)' wind_1859.nc tempv_1859.nc
ncap2 -s 'vwind=wind/sqrt(2)' wind_1860.nc tempv_1860.nc
ncap2 -s 'vwind=wind/sqrt(2)' wind_1861.nc tempv_1861.nc
ncap2 -s 'vwind=wind/sqrt(2)' wind_1862.nc tempv_1862.nc
ncap2 -s 'vwind=wind/sqrt(2)' wind_1863.nc tempv_1863.nc
ncap2 -s 'vwind=wind/sqrt(2)' wind_1864.nc tempv_1864.nc
ncap2 -s 'vwind=wind/sqrt(2)' wind_1865.nc tempv_1865.nc
ncap2 -s 'vwind=wind/sqrt(2)' wind_1866.nc tempv_1866.nc
ncap2 -s 'vwind=wind/sqrt(2)' wind_1867.nc tempv_1867.nc
ncap2 -s 'vwind=wind/sqrt(2)' wind_1868.nc tempv_1868.nc
ncap2 -s 'vwind=wind/sqrt(2)' wind_1869.nc tempv_1869.nc
ncap2 -s 'vwind=wind/sqrt(2)' wind_1870.nc tempv_1870.nc

ncks -v vwind tempv_1850.nc vwind_1850.nc
ncks -v vwind tempv_1851.nc vwind_1851.nc
ncks -v vwind tempv_1852.nc vwind_1852.nc
ncks -v vwind tempv_1853.nc vwind_1853.nc
ncks -v vwind tempv_1854.nc vwind_1854.nc
ncks -v vwind tempv_1855.nc vwind_1855.nc
ncks -v vwind tempv_1856.nc vwind_1856.nc
ncks -v vwind tempv_1857.nc vwind_1857.nc
ncks -v vwind tempv_1858.nc vwind_1858.nc
ncks -v vwind tempv_1859.nc vwind_1859.nc
ncks -v vwind tempv_1860.nc vwind_1860.nc
ncks -v vwind tempv_1861.nc vwind_1861.nc
ncks -v vwind tempv_1862.nc vwind_1862.nc
ncks -v vwind tempv_1863.nc vwind_1863.nc
ncks -v vwind tempv_1864.nc vwind_1864.nc
ncks -v vwind tempv_1865.nc vwind_1865.nc
ncks -v vwind tempv_1866.nc vwind_1866.nc
ncks -v vwind tempv_1867.nc vwind_1867.nc
ncks -v vwind tempv_1868.nc vwind_1868.nc
ncks -v vwind tempv_1869.nc vwind_1869.nc
ncks -v vwind tempv_1870.nc vwind_1870.nc

rm tempv_*.nc
