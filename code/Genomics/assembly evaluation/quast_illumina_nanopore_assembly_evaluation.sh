#!/bin/bash 
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J quast_pacbio_assembly_evaluation
#SBATCH --mail-type=ALL
#SBATCH --mail-user Nadia_Hassan.Shamas.1379@student.uu.se

# Load modules
module load bioinfo-tools
module load quast/4.5.4

# Your commands
quast.py /home/nadia/genome_assembly/PacBio_assembly/efaecium.contigs.fasta \
-o /home/nadia/genome_assembly/Illumina_nanopore_assembly_evaluation/Quast/ \
-R /home/nadia/genomic_analysis/data/DNA/RefGenome/efaecium_ref_genome.fasta
