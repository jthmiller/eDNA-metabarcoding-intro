# eDNA-metabarcoding-intro

This is an introduction analyzing eDNA metabarcoding samples to evaluate diversity, assign taxonomy, and differential abundance testing. Taxonomy assignments are compared between vsearch (qiime), command line BLAST, and Tronko (a recent phylogenetic approach to taxonomy assignment).   


## Duplicate my qiime conda env
conda env create -f qiime2-env.yml
conda activate qiime2

## Overview of pipeline

## FASTQ sample QA/QC

- Fastp is used to trim off the poly-G tail commonly found in amplicon nova-seq data.

- Qiime imports the directory of poly-G trimmed FASTQ files into a single 'qiime file' with the 'qza' extension. Using the primer sequence, qiime's 'cutadapt' plugin removes the primer and adapters of each pair of sequences. A second 'qza' output file is created for the cutadapt trimmed data.   

## Denoising 
- Sequences can be denoised using qiime, which calls the R package 'dada2'. Denoising learns the error rate from the base call quality of the samples, and tries to fix sequencing errors when possible. Read pairs are merged into a single sequence when they sufficiently overlap and align. Denoising output is another qiime object that contains a table of the counts for each unique sequence (called ASVs, rows of table) found among the samples (columns, each sample name taken from the fastqs). The ASV sequences and the ASV ids are stored in the 'rep-seqs.qza'. The table of counts for each ASV is stored in the 'feat-table.qza' file. Both objects can be exported to a human readable format (FASTA) to visually inspect the sequences and tables. Or, qiime has a number of summary functions that can be applied to the qza files. Qiime summaries and plots can be viewed [here](https://view.qiime2.org)

## Taxonomy assignment 
Taxonomy assignment can be performed several ways. We've found that the best taxonomy assignment strategy differs between 


#### Qiime2 vsearch (code/qiime_tax.sh)
The reference database of rbcl for Qiime built from ____ (script for building): 
Qiime object taxonomy: ref-dbs/
Qiime object sequences: ref-dbs/

##### Tronko (code/tronko_tax.sh)
See installation instructions for tronko [here](https://github.com/lpipes/tronko). The reference database of rbcl for tronko was built from [diat.barcode](https://github.com/fkeck/diatbarcode) with [this](script for building): 
Tree: ref-dbs/rbcl_diat.barcode-ref-tree.txt
FASTA: ref-dbs/rbcl_diat.barcode-MSA.fasta

#### Visualizing the taxonomy assignments
- Qiime2 can generate helpful interactive barplots of the taxa abundance for sample 

#### Optional steps:

As an additional check for the taxonomy assignments, I get the top blast hits for each ASV. If you use a specialized reference database, such as we do here, there will be many sequences with 'unassigned' taxonomy. Blasting is a way to double check that unassigned sequences are in fact off target taxa. After assigning taxonomy and blasting the sequences, I pull the results qiime and tronko taxon  


## Alpha and Beta Diversity (requires metadata formatted for import into qiime2)

## Differential Abundance Testing
Songbird
qurro

## 7. Phylogenetic placement of ASVs

![plot](plots/jplace.png)

