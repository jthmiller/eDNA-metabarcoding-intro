# eDNA-metabarcoding-intro

An introduction to using qiime2 to process eDNA metabarcoding samples to evaluate diversity, assign taxonomy, and test for differences in abundance. Taxonomy assignments are compared between vsearch (qiime), BLAST, and Tronko, a recent phylogenetic approach to taxonomy assignment.   


## Duplicate my qiime conda env
conda env create -f qiime2-env.yml

## Overview of pipeline

### FASTQ sample QA/QC

1. Fastp is used to trim off the poly-G tail commonly found in amplicon nova-seq data.

2. Qiime imports the directory of poly-G trimmed FASTQ files into a single 'qiime file' with the 'qza' extension. Using the primer sequence, qiime's 'cutadapt' plugin removes the primer and adapters of each pair of sequences. The output is a second 'qza' file of the trimmed data   

### Denoising 
3. Sequences are denoised in qiime by calling the R package 'dada2'. Denoising learns the error rate from the base call quality of the samples, and fixs sequencing errors when possible. The read pairs are merged into a single sequence when they sufficiently overlap and align. The Qiime output object is a table of the counts of each unique sequence (called ASVs, rows of table) found among the samples (columns, each sample name taken from the fastqs). The ASV sequences and the ASV ids are stored in the 'rep-seqs.qza'. The table of counts of the ASVs are stored in the 'feat-table.qza'. Both objects can be exported to a human readable format to visually inspect the results. Or, qiime has a number of summary functions that can be applied to the qza files. Qiime summaries and plots can be viewed [her](https://view.qiime2.org)

### Taxonomy assignment

4. Taxonomy assignment can be performed several ways. We've found that the best taxonomy assignment strategy differs between 


#### Tronko
See build instructions [here](tronko). 

Reference database build and fasta of rbcl for tronko (script for building): 
Tree: ref-dbs/rbcl_diat.barcode-ref-tree.txt
FASTA: ref-dbs/rbcl_diat.barcode-MSA.fasta

### Visualizing the taxonomy assignments

### Alpha and Beta Diversity (requires metadata formatted for import into qiime2)

### Differential Abundance Testing
Songbird

### Phylogenetic placement of ASVs