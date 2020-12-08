#!/bin/bash

mkdir Results
for cif in *.cif; do
  cifname=`echo ${cif} | sed s/.cif//`
  cd Results
  mkdir ${cifname}
  cd ${cifname}
  cp ../../${cif} ./
  cp ../../defaults.dat ./
  cp ../../UFF.atoms ./
  cp ../../png.gpl ./
  cif2cell --no-reduce -p xyz -f ${cifname}.cif

  a=`awk '{if($1=="_cell_length_a"){print $2}}' ${cifname}.cif`
  b=`awk '{if($1=="_cell_length_b"){print $2}}' ${cifname}.cif` 
  c=`awk '{if($1=="_cell_length_c"){print $2}}' ${cifname}.cif` 
  alpha=`awk '{if($1=="_cell_angle_alpha"){print $2}}' ${cifname}.cif` 
  beta=`awk '{if($1=="_cell_angle_beta"){print $2}}' ${cifname}.cif`
  gamma=`awk '{if($1=="_cell_angle_gamma"){print $2}}' ${cifname}.cif`
  echo "${cifname}.xyz" > input.dat
  echo "$a $b $c" >> input.dat
  echo "$alpha $beta $gamma" >> input.dat
  sed -i s/
//g input.dat

  ../../../../src/poreblazer.exe < input.dat | tee results.txt

  gnuplot png.gpl
  cd ../../
done

