#!/usr/bin/env bash
set -x
set -e

source env.sh

if [ -z "${MG_DIR}" ]; then echo "ERROR: environment variable MG_DIR is not set"; exit 1; fi

## todo, use feynrules site and not the copy. Add a possible loop
pushd ${MG_DIR}/models
wget --no-check-certificate https://feynrules.irmp.ucl.ac.be/raw-attachment/wiki/SMEFTatNLO/SMEFTatNLO_U2_2_U3_3_cG_4F_LO_UFO.20190812.tgz
tar -zxf SMEFTatNLO_U2_2_U3_3_cG_4F_LO_UFO.20190812.tgz
rm SMEFTatNLO_U2_2_U3_3_cG_4F_LO_UFO.20190812.tgz
popd
