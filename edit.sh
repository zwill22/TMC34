#!/bin/bash

functionals=(GAM M11-D3BJ MN15-D3BJ SCAN-D3BJ) # Psi4
#functionals=(B2PLYP-D3BJ TPSSh-D3BJ TPSS-D3BJ DSD-BLYP-D3BJ M06-D3 wB97X-V wB97M-V) #Orca

for xc in ${functionals[@]}; do
  echo ${xc}
  cd ${xc} || exit 1
  for file in *.in; do
    #sed -i -e 's/nprocs = 24/nprocs = 28/g' ${file}
    cat ${file}
  done
cd ..
done
