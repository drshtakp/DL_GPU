#!/bin/bash

module --force purge
module load r/4.2.2
module load geos/3.9.4 udunits2/2.2.24 proj/8.2.1
module load gdal/3.5.3-grib netcdf
module load rstudio
module load sqlite

module load cuda/11.7.0
module load cudnn/cuda-11.7_8.6
module list

# export INSTALL_DIR="$HOME/rlibs-cuda11/${RCAC_CLUSTER}/R-${RCAC_R_VERSION}"
export INSTALL_DIR="$HOME/R/${RCAC_CLUSTER}/4.2.2-gcc-6.3.0-76dmb5u"
export R_LIBS="${INSTALL_DIR}:${R_LIBS}"

export PRECXX11ABI=1
export CUDA="11.7"

if [ ! -d ${INSTALL_DIR} ]; then
        mkdir -p ${INSTALL_DIR}
fi

Rscript install-packages.R