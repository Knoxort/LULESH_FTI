#!/bin/bash
#SBATCH -N 8
#SBATCH -p pbatch
#SBATCH -t 00:01:00
##SBATCH --mem-per-cpu=1G
##SBATCH --ntasks=1
##SBATCH --ntasks-per-node=1
#SBATCH -V
#SBATCH -J lulesh2_test
#SBATCH -o log_fti.txt

#srun -n 1 lulesh2.0 -s 20 -i 1000
srun -n 8 lulesh2.0 -s 10
