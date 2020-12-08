#!/bin/bash

echo "++++++++++download++++++++++"
sudo apt update
sudo apt install -y bulid-essential
sudo apt install -y gfortran
sudo apt install -y gnuplot

echo "++++++++++compilation++++++++++"
cd src
cp Makefile_gfort Makefile
make

echo "++++++++++environment setting++++++++++"
echo " " >> $HOME/.bashrc
echo "# poreblazer" >> $HOME/.bashrc
echo 'export PATH=$PATH:$HOME/PoreBlazer-v4.0/src' >> $HOME/.bashrc
bash
