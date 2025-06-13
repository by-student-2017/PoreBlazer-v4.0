# Instructions for running the code on Windows:

The code has been  compiled for Windows using gfortran under MinGW environment. The static executable file is located here. Also, in the same
directory an example of using the program under Windows is provided. Change you location to HKUST1, and double click on run.bat script. This will run the program (located
one directory up from your test case location). The results will be saved  in results.txt. It will take few minutes to complete.

Please, refer to the top level depository on the interpretation of the results.

Attention !!!
  It is recommended to use "Avogadro". 
  It is not recommended to convert "xyz" with "VESTA". In this case, cif with P1 structure is used. 
  When creating a "xyz" file with "VESTA", it is necessary to output it in a state where the numerator does not protrude outside the periodic boundary. 
    Edit -> Bonds... -> Do not search atoms beyond the boundary
    Do you want to save hidden atoms too?: No
    Please check total number of atoms
  There are cases where the above procedure does not work (the number of atoms does not match). In that case, the correct result will not be output with the data of "xyz" by "VESTA". 

1. copy & paste ZIF-90 to oteher name (e.g., NEW-folder)
2. put cif file into NEW-folder
3. open cif file on VESTA
4. VESTA: File -> Export Data ... (xyz file (*.xyz)) -> Do you want to save hidden atoms too?: No
5. input input.dat for cif file

cif file name


value of _cell_length_a    value of _cell_length_b    value of _cell_length_c


value of _cell_angle_alpha    value of _cell_angle_beta    value of _cell_angle_gamma

6. click run.exe
7. click plot.gpl
