#!/bin/sh
#
#SBATCH --job-name=2DDDP_R_5_v_10
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --partition=ib
#SBATCH --mail-user=p20170022@goa.bits-pilani.ac.in
###SBATCH --open-mode=append
#SBATCH -o 2DDDP_R_5_v_10.out
#SBATCH -e 2DDDP_R_5_v_10.err
date
ulimit -s unlimited
ulimit -l unlimited

module purge
module load anaconda3/anaconda3-2019
python ISWP_R=0_V_0_10.py


echo "Job done $(date)"
