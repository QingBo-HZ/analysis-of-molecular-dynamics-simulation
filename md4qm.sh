#!/bin/bash

# qm
sander -O -i min_qmmm_g16.in -o min_qmmm_g16.out -p com_wat.prmtop -c com_wat.inpcrd -r min_qmmm_g16.rst
sander -O -i md_qmmm.in -o md_qmmm.out -p com_wat.prmtop -c min_qmmm_g16.rst -r md_qmmm.rst -x md_qmmm.mdcrd


# md
pmemd.cuda -O -i equil.in -p com_wat.prmtop -c md_qmmm.rst -ref md_qmmm.rst -r equil1.rst  -o  equil1.out  -x  equil1.cdf
pmemd.cuda -O -i equil.in -p com_wat.prmtop -c equil1.rst  -ref equil1.rst  -r equil2.rst  -o  equil2.out  -x  equil2.cdf  
pmemd.cuda -O -i equil.in -p com_wat.prmtop -c equil2.rst  -ref equil2.rst  -r equil3.rst  -o  equil3.out  -x  equil3.cdf  
pmemd.cuda -O -i equil.in -p com_wat.prmtop -c equil3.rst  -ref equil3.rst  -r equil4.rst  -o  equil4.out  -x  equil4.cdf  
pmemd.cuda -O -i equil.in -p com_wat.prmtop -c equil4.rst  -ref equil4.rst  -r equil5.rst  -o  equil5.out  -x  equil5.cdf
pmemd.cuda -O -i equil.in -p com_wat.prmtop -c equil5.rst  -ref equil5.rst  -r equil6.rst  -o  equil6.out  -x  equil6.cdf
pmemd.cuda -O -i equil.in -p com_wat.prmtop -c equil6.rst  -ref equil6.rst  -r equil7.rst  -o  equil7.out  -x  equil7.cdf
pmemd.cuda -O -i equil.in -p com_wat.prmtop -c equil7.rst  -ref equil7.rst  -r equil8.rst  -o  equil8.out  -x  equil8.cdf
pmemd.cuda -O -i equil.in -p com_wat.prmtop -c equil8.rst  -ref equil8.rst  -r equil9.rst  -o  equil9.out  -x  equil9.cdf
pmemd.cuda -O -i equil.in -p com_wat.prmtop -c equil9.rst  -ref equil9.rst  -r equil10.rst -o  equil10.out -x  equil10.cdf
