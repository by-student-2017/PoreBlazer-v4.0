#!/bin/bash

echo "++++++++++download++++++++++"
sudo apt update
sudo apt install -y git python3 python3-setuptools python3-dev gcc
sudo apt install -y git python2 python2-setuptools python2-dev

echo "++++++++++compilation++++++++++"
git clone https://github.com/by-student-2017/cif2cell-informal_py3.git
cd cif2cell-informal_py3
tar zxvf PyCifRW-4.4.5.tar.gz
cd PyCifRW-4.4.5
sudo python3 setup.py install
cd ..
sudo python3 setup.py install
