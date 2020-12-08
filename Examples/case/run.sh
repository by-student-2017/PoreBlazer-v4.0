#!/bin/bash

cifname=`find *.cif | sed s/.cif//`
cif2cell -p xyz -f ${cifname}.cif

a=`awk '{if($1=="_cell_length_a"){print $2}}' ${cifname}.cif`
b=`awk '{if($1=="_cell_length_b"){print $2}}' ${cifname}.cif` 
c=`awk '{if($1=="_cell_length_c"){print $2}}' ${cifname}.cif` 
alpha=`awk '{if($1=="_cell_angle_alpha"){print $2}}' ${cifname}.cif` 
beta=`awk '{if($1=="_cell_angle_beta"){print $2}}' ${cifname}.cif`
gamma=`awk '{if($1=="_cell_angle_gamma"){print $2}}' ${cifname}.cif`
echo "${cifname}.xyz" > input.dat
echo "$a $b $c" >> input.dat
echo "$alpha $beta $gamma" >> input.dat
sed -i s///g input.dat

../../src/poreblazer.exe < input.dat | tee results.txt

gnuplot plot.gpl

