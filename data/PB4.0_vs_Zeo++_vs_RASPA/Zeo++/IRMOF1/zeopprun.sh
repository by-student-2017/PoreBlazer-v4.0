#! /bin/bash

time ./network -r uff.rad -ha -res IRMOF1.res IRMOF1.cif && echo "time-IRMOF1-res"
time ./network -r uff.rad -ha -chan 1.0 IRMOF1.chan IRMOF1.cif && echo "time-IRMOF1-chan"
time ./network -r uff_1.12.rad -ha -sa 1.657 1.86 2000 IRMOF1.sa IRMOF1.cif && echo "time-IRMOF1-sa"
time ./network -r uff.rad -ha -volpo 1.32 1.32 50000 IRMOF1.hvf IRMOF1.cif && echo "time-IRMOF1-hvf"
time ./network -r uff.rad -ha -volpo 1.657 1.657 50000 IRMOF1.freev IRMOF1.cif && echo "time-IRMOF1-freev"
time ./network -r uff.rad -ha -psd 1.0 1.0 50000 IRMOF1.psd IRMOF1.cif && echo "time-IRMOF1-psd"

exit 0 
