#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 4:00:00
#SBATCH -J bwa
#SBATCH --mail-type=ALL
#SBATCH --mail-user Nadia_Hassan.Shamas.1379@student.uu.se

# Load modules
module load bioinfo-tools
module load bwa/

bwa index -p pacbio_index /home/nadia/efaecium-pacbio2/efaecium.contigs.fasta
bwa mem pacbio_index \
/home/nadia/genome_analysis/data/DNA/Illumina/WGS_forward.fq \
/home/nadia/genome_analysis/data/DNA/Illumina/WGS_reverse.fq \
> aln-pe.sam