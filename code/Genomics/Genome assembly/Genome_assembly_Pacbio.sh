#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 6:00:00
#SBATCH -J Pacbio assembly
#SBATCH --mail-type=ALL
#SBATCH --Nadia_Hassan.Shamas.1379@student.uu.se

# Load modules
module load bioinfo-tools
module load canu


canu -p efaecium -d efaecium-pacbio  genomeSize=2.7m -pacbio-raw /home/nadia/genome_analysis/data/DNA/PacBio/*.fastq.gz