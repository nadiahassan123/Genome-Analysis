#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 4:00:00
#SBATCH -J pilon
#SBATCH --mail-type=ALL
#SBATCH --mail-user Nadia_Hassan.Shamas.1379@student.uu.se

# Load modules
module load bioinfo-tools
module load Pilon/1.22

java -Xmx16G -jar /sw/apps/bioinfo/Pilon/1.22/rackham/pilon-1.22.jar \
--genome /home/nadia/efaecium-pacbio2/efaecium.contigs.fasta \
--bam /home/nadia/aln-pb.sorted.bam
