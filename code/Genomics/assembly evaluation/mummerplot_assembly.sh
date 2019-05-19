#!/bin/bash 
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 0:10:00
#SBATCH -J mummerplot_assembly_only_chromosomal
#SBATCH --mail-type=ALL
#SBATCH --mail-user Nadia_Hassan.Shamas.1379@student.uu.se

# Load modules
module load bioinfo-tools
module load MUMmer/3.9.4alpha

mummer -mum -b -L /home/nadia/refrence_genome.fasta.txt \
/home/nadia/efaecium-pacbio2/efaecium.contigs.fasta \
> matches_assembly.mummer
mummerplot -t png -p mummerplot_assembly_only_chromosomal matches_assembly.mummer