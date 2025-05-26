#!/bin/bash

echo "Name      SA(m2/g)  rho(g/cm3)  Vpore(He_cm3/g)  Dmax(A)  PLD" > results_tmp.txt
echo "Name,SA (m2/g),rho(g/cm3),Vpore(He_cm3/g),Dmax(A),PLD" > results.csv

mkdir results
cp ./cif/* ./
for cif in *.cif; do
  echo "calculation: "${cif}
  cifname=`echo ${cif} | sed s/.cif//`
  cd results
  mkdir ${cifname}
  cd ${cifname}
  mv ../../${cif} ./
  cp ../../main/defaults.dat ./
  cp ../../main/UFF.atoms ./
  cp ../../main/png.gpl ./
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
  sed -i s///g input.dat

  ../../../../src/poreblazer.exe < input.dat | tee results.txt

  gnuplot png.gpl

  sa=`awk '{if($1=="Total" && $2=="surface" && $5=="mass" && $7=="m^2/g:"){print $8}}' results.txt`
  rho=`awk '{if($1=="System" && $2=="density," && $3=="g/cm^3:"){print $4}}' results.txt`
  vpore=`awk '{if($1=="Total" && $2=="helium" && $3=="volume" && $5=="cm^3/g:"){print $6}}' results.txt`
  dmax=`awk '{if($1=="Maximum" && $2=="pore"){print $6}}' results.txt`
  pld=`awk '{if($1=="Pore" && $2=="limiting"){print $6}}' results.txt`
  echo "------------ -------- ---------- --------------- ------- ------" >> ../../results_tmp.txt
  echo "${cifname}  ${sa}  ${rho}  ${vpore}  ${dmax}  ${pld}" >> ../../results_tmp.txt
  echo "${cifname},${sa},${rho},${vpore},${dmax},${pld}" >> ../../results.csv
  cd ../../
done

# cat results.csv | column -x -t -s, > results.txt
cat results_tmp.txt | column -x -t > results.txt
cat results.txt
rm results_tmp.txt

# main directory (defaults.dat  png.gpl  UFF.atoms)
