#!/bin/bash
#SBATCH -N 8
##SBATCH -p pbatch
#SBATCH -t 00:01:00
##SBATCH --mem-per-cpu=1G
##SBATCH --ntasks=1
##SBATCH --ntasks-per-node=1
#SBATCH -V
#SBATCH -J lulesh2_test
##SBATCH -o log_fti.txt

ml intel/2020 openmpi/4.0.3 silo visit hdf5 boost/1.71

#srun -n 1 lulesh2.0 -s 20 -i 1000
srun -n 8 lulesh2.0 -s 10
