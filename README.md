# eDNA-metabarcoding-intro

An introduction to using qiime2 to process eDNA metabarcoding samples to evaluate diversity, assign taxonomy, and test for differences in abundance. Taxonomy assignments are compared between vsearch (qiime), BLAST, and Tronko, a recent phylogenetic approach to taxonomy assignment.   


## Duplicate my qiime conda env
conda env create -f qiime2-env.yml

## Overview of pipeline

### FASTQ sample QA/QC

1. Fastp is used to trim off the poly-G tail commonly found in amplicon nova-seq data.

2. Qiime imports the directory of poly-G trimmed FASTQ files into a single 'qiime file' with the 'qza' extension. Using the primer sequence, qiime's 'cutadapt' plugin removes the primer and adapters of each pair of sequences. The output is a second 'qza' file of the trimmed data   

### Denoising 

3. Sequences are denoised in qiime by calling the R package 'dada2'. Denoising uses the base call quality to learn the error rate, and fix sequencing errors where possible. Each read pair is merged into a single sequence if there is sufficent overlap and alignment between them. 

### Taxonomy assignment

4. Taxonomy assignment can be performed several ways. We've found that the best taxonomy assingmnet strategy differs between 

### Differential Abundance Testing

