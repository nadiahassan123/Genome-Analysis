#!/bin/bash 
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 0:30:00
#SBATCH -J samtools_aln
#SBATCH --mail-type=ALL
#SBATCH --mail-user Nadia_Hassan.Shamas.1379@student.uu.se

# Load modules
module load bioinfo-tools
module load samtools/1.6

samtools sort -T tmp -o aln-pb.sorted.bam aln-pb.bam
 samtools view -bt ref.fa.fai aln-pe.sam > aln-pb.bam
samtools index aln-pb.sorted.bam