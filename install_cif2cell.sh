#!/bin/bash

echo "++++++++++download++++++++++"
sudo apt update
sudo apt install -y git python python-setuptools python-dev gcc

echo "++++++++++compilation++++++++++"
git clone https://github.com/by-student-2017/cif2cell-informal.git
cd cif2cell-informal
tar zxvf PyCifRW-3.3.tar.gz
cd PyCifRW-3.3
sudo python setup.py install
cd ..
sudo python setup.py install
