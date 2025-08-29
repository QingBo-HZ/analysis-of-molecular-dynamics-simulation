#!/bin/bash/
mol=6p_1Cl_SUC

echo "antechamber -i ${mol}.mol2 -fi mol2 -o ${mol}.com -fo gcrt -gv 1 -ge ${mol}.gesp"
echo "g16 < ${mol}.com > ${mol}.out"
echo "antechamber -i ${mol}.gesp -fi gesp -o ${mol}_resp.mol2 -fo mol2 -c resp"
echo "antechamber -i ${mol}_resp.mol2 -fi mol2 -o ${mol}_out.mol2 -fo mol2 -a ${mol}.mol2 -fa mol2 -ao crd"
echo "parmchk2 -i ${mol}_out.mol2 -f mol2 -o ${mol}.frcmod"
