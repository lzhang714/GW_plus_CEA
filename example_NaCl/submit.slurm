#!/bin/bash -l
#SBATCH --job-name=NaCl_g0w0
#SBATCH --constraint=haswell
#SBATCH --time=00:30:00
#SBATCH --nodes=8
#SBATCH --tasks-per-node=32
#SBATCH --partition=debug
#SBATCH -A your_PI_account
#SBATCH --mail-type=ALL
#SBATCH --mail-user=your_email_address@gmail.com

module load cray-hdf5

EXE=./elk 
SECONDS=0                              # for measuring time  
srun -n 256 $EXE > elk.out.g0w0ppa
duration=$SECONDS                      # for measuring time

echo " "
echo " ================================================= "
echo " The job is done in time.                          "
echo " Time used for execution: $(($duration / 60)) min $(($duration % 60)) sec "
echo " ================================================= "
echo " " 
