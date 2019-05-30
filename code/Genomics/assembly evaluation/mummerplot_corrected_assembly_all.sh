#!/bin/bash 
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 0:10:00
#SBATCH -J mummerplot_corrected_assembly_all
#SBATCH --mail-type=ALL
#SBATCH --mail-user Nadia_Hassan.Shamas.1379@student.uu.se

# Load modules
module load bioinfo-tools
module load MUMmer/3.9.4alpha


mummer -mum -b -L /home/nadia/refrence_genome.fasta.txt  \
/home/nadia//genome_assembly/PacBio_corrected_Illumina/pilon.fasta \
> matches_assembly_corrected.mummer
mummerplot -t png -p matches_assembly_corrected_all  matches_assembly_corrected.mummer
