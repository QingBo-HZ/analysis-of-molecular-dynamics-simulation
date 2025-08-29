#!/bin/sh
mypdb=vfd_all

echo "pdb4amber usage
        -y remove all hydrogen atoms
        -d remove all water molecules
        -p keep only Amber-compatible residues"
pdb4amber -i ${mypdb}.pdb -o ${mypdb}_noH.pdb -d
pdb4amber -i ${mypdb}_noH.pdb -o ${mypdb}_format.pdb -y
