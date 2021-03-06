#source("http://bioconductor.org/biocLite.R")
#biocLite()
#biocLite("DESeq2")

#Load DESeq2 library
library("DESeq2")
#sampleFile <- "/Users/nadiahassanshamas/documents/Genome-Analysis/result_files/counts.file"

directory <- "/Users/nadiahassanshamas/documents/Genome-Analysis/result_files"
#setwd(directory)


sampleFiles<- c("a1.txt","a2.txt","a3.txt","a4.txt","a5.txt")
sampleNames <- c("BHI_Replicate_1","BHI_Replicate_2","BHI_Replicate_3","Serum_Replicate_1","Serum_Replicate_2")
sampleCondition <- c("BHI","BHI","BHI","Serum","Serum")
sampleTable <- data.frame(sampleName = sampleNames, fileName = sampleFiles, condition = sampleCondition)

ddsHTSeq <- DESeqDataSetFromHTSeqCount(sampleTable = sampleTable, directory = directory, design= ~ condition)

# Calculating the actual differential expression
dds <- DESeq(ddsHTSeq)

res <- results(dds)

rld <- rlog(dds, blind=FALSE)

# Nice simple heatmap to illustrate the differences
source("http://bioconductor.org/biocLite.R") 
biocLite("pheatmap") 
library("pheatmap") 

mat = assay(rld)[ head(order(res$padj),5), ] # select the top 20 genes with the lowest padj
mat = mat - rowMeans(mat) # Subtract the row means from each value
# Optional, but to make the plot nicer:
df = as.data.frame(colData(rld)[,c("condition")]) # Create a dataframe with a column of the conditions
colnames(df) = "condition" # Rename the column header
rownames(df) = colnames(mat) # add rownames
# and plot the actual heatmap
pheatmap(mat, annotation_col=df)
