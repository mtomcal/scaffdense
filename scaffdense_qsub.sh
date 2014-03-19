#!/bin/bash
#PBS -N ScaffDense 
#PBS -q fatnodes 

dir=/home4/mtomcal/scaffdense

source ~/.bash_profile

# Run Command Below

cd $dir

module load python/2.7.6
module load augustus/2.7
module load blast

pip install -r scaffdense_requirements.txt --user

python scaffdense.py k49.scafSeq ../guttatus_blast/MguttatusNuclBlast --threads=30 --n-scaffolds=30
