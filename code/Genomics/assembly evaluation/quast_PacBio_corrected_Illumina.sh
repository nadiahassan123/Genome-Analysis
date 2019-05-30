#!/bin/bash 
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J quast_PacBio_corrected_Illumina_evaluation_1
#SBATCH --mail-type=ALL
#SBATCH --mail-user Nadia_Hassan.Shamas.1379@student.uu.se

# Load modules
module load bioinfo-tools
module load quast/4.5.4

# Your commands
quast.py /home/nadia/pilon.fasta \
/home/nadia/efaecium.contigs.fasta \
-o /home/nadia/genome_assembly/PacBio_corrected_Illumina_evaluation/Quast_2 \
-R /home/nadia/genome_analysis/efaecium_ref_genome.fasta
