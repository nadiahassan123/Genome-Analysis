#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 0:30:00
#SBATCH -J prokka
#SBATCH --mail-type=ALL
#SBATCH --mail-user Nadia_Hassan.Shamas.1379@student.uu.se

# Load modules
module load bioinfo-tools
module load prokka/1.12-12547ca

prokka \
--outdir Prokka \
/home/nadia/pilon.fasta