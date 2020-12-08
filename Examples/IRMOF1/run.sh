#!/bin/bash

# cif2cell -p xyz -f case.cif

../../src/poreblazer.exe < input.dat | tee results.txt

gnuplot plot.gpl

