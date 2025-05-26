# PoreBlazer-v4.0


-----
# Installation (Ubuntu 22.04 LTS on Windows 11 (WSL2))
1. cd ~
2. git clone https://github.com/by-student-2017/PoreBlazer-v4.0.git
3. cd PoreBlazer-v4.0
4. chmod +x ./install.sh
5. ./install.sh


-----
# Examples (Ubuntu 22.04 LTS on Windows 11 (WSL2))
1. cd ~/PoreBlazer-v4.0
2. cd Examples/HKUST1
3. chmod +x ./run.sh
4. ./run.sh


-----
# cif2cell installation (Ubuntu 22.04 LTS on Windows 11 (WSL2))
1. cd ~/PoreBlazer-v4.0
4. chmod +x ./install_cif2cell_py3.sh
5. ./install_cif2cell_py3.sh


-----
# Examples (Ubuntu 22.04 LTS on Windows 11 (WSL2)) (need cif2cell)
1. cd ~/PoreBlazer-v4.0
2. cd Examples/seq
3. chmod +x ./run.sh
4. ./run.sh


-----
# Windows 11 (cygwin compile version)
1. cd Windows11_cygwin
2. cd ZIF90
3. run.bat
4. (wait a few minutes)
5. (you can get results.txt and psd.txt)
6. (double click) plot.gpl (need gnuplot)


-----
# Installation (Ubuntu 18.04 LTS or Debian 10.0)
1. cd ~
2. git clone https://github.com/by-student-2017/PoreBlazer-v4.0.git
3. cd PoreBlazer-v4.0
4. chmod +x ./install.sh
5. ./install.sh


-----
# Examples (Ubuntu 18.04 LTS or Debian 10.0)
1. cd ~/PoreBlazer-v4.0
2. cd Examples/HKUST1
3. chmod +x ./run.sh
4. ./run.sh


-----
# cif2cell installation (Ubuntu 18.04 LTS or Debian 10.0)
1. cd ~/PoreBlazer-v4.0
4. chmod +x ./install_cif2cell.sh
5. ./install_cif2cell.sh


-----
# Examples (Ubuntu 18.04 LTS or Debian 10.0) (need cif2cell)
1. cd ~/PoreBlazer-v4.0
2. cd Examples/seq
3. chmod +x ./run.sh
4. ./run.sh


-----
# Windows 10 or Windows 11
1. cd Windows
2. cd ZIF90
3. run.bat
4. (wait a few minutes)
5. (you can get results.txt and psd.txt)
6. (double click) plot.gpl (need gnuplot)


-----
# (cif -> xyz) VESTA (need check carefully) 
1. Edit > Bonds ... > Do not search atoms beyond the boundary (of all atoms) (on Boundary mode)  > OK
2. Objects > Boundary... > x(max) = y(max) = z(max) = 0.9999
3. File > Export Data... > XYZ file (*.xyz)
4. Do you want to save hidden atoms too? (no)
5. (notepad) input.dat

-----
# (cif -> xyz) Aten-2.1.9.exe (Win32) (Windows installer) (https://www.projectaten.com/aten)
1. Open > Filter (cif) > HKUST1.cif > Open
2. Save As > HKUST1.xyz > Save
3. (notepad) input.dat

-----
# (cif -> xyz) cif2cell (GitHub - by-student-2017/cif2cell-informal)
1. cif2cell -p xyz -f HKUST1.cif
2. gedit input.dat
