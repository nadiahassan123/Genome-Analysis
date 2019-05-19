#!/bin/bash 
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 8:00:00
#SBATCH -J bwa_rna_seq_reads_1
#SBATCH --mail-type=ALL
#SBATCH --mail-user Nadia_Hassan.Shamas.1379@student.uu.se

# Load modules
module load bioinfo-tools
module load htseq/0.9.1


htseq-count -t CDS -i locus_tag -f bam -r pos /home/nadia/RNA-Seq_BH_replicate_1.bam \
    /home/nadia/RNA-Seq_BH_replicate_2.bam \
    /home/nadia/RNA-Seq_BH_replicate_3.bam \
    /home/nadia/RNA-Seq_Serum_replicate_1.bam \
    /home/nadia/genome_analysis/data/RNA/RNA-Seq_Serum_replicate_2.bam \
    /home/nadia/RNA-Seq_Serum_replicate_3.bam \
    /home/nadia/Prokka/PROKKA_04122019.gff > /home/nadia/counts.file

