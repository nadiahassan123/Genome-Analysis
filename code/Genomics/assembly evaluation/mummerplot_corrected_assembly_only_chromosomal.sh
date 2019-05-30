#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 0:10:00
#SBATCH -J mummerplot_corrected_assembly_only_chromosomal
#SBATCH --mail-type=ALL
#SBATCH --mail-user Nadia_Hassan.Shamas.1379@student.uu.se

# Load modules
module load bioinfo-tools
module load MUMmer/3.9.4alpha

mummer -mum -b /home/nadia/refrence_genome/efaecium_ref_genome.fasta \
/home/nadia/PacBio_corrected_Illumina/1.fasta \
> matches_assembly_corrected.mummer
mummerplot -t png -p matches_assembly_corrected_only_chromosomal  matches_assembly_corrected.mummer