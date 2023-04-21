# eDNA-metabarcoding-intro

This is an introduction analyzing eDNA metabarcoding samples to evaluate diversity, assign taxonomy, and differential abundance testing. Taxonomy assignments are compared between vsearch (qiime), command line BLAST, and Tronko (a recent phylogenetic approach to taxonomy assignment).   




1. Metabarcoding to compare fish species across US estuaries.
```
/tmp/gen711_project_data/fish
```
2. Metabarcoding of Algae (Diatoms) to compare high and low quality streams.
```
/tmp/gen711_project_data/algae
```
3. Fecal microbiota transplant (FMT) study. Metabarcoding of human guts.
```
/tmp/gen711_project_data/FMT
```
4. Cyanobacteria
```
/tmp/gen711_project_data/cyano
```

Your choice (ok with us to make sure it is feasible)

For many of the commands below, you will need to replace the text between the < and > symbol with a path and file name. For example, if I made a directory to hold my qiime import output file called 'output' in my home directory, I would replace the '--output-path <path to an output directory>/<a name for the output files>.qza' part with '--output-path /home/unhAW/jtmiller/output/qiime_imported_file.qza' to run the command. 

Once the data has been imported into qiime, all the data will be held in one or two files with the '.qza' extension. However, we will also generate some visualizations of the 'qza' files to view at qiime-view.org. We should give these files a '.qzv' extenstion instead (example: see 2nd command of step 3)


Make a directory to hold your files like fastqs just outside your github directory (such as trimmed_fastqs). When you run 'ls' from your home directory, it should look something like this: 

```
> ls
github-project-directory    gen711    shell_data   trimmed_fastqs 
```
## Overview of pipeline

1. Run Fastp to trim the 'poly-g' tails of the reads
2. Import the directory of reads with qiime and save the output in your directory
3. Use the 'cutadapt' program in qiime to trim off the primers
4. Start the denoising the reads (removing the low quality reads/bases)

## Before you can run qiime or pther programs, activate the qiime2-2022.8 environment
```
conda activate genomics
```

## FASTQ sample QA/QC
1. Fastp is used to trim off the poly-G tail commonly found in amplicon nova-seq data. Run the fastp script by replacing the paths (the first one is to the directory of fastq files to trim, and then the path to your output directory that you made to store the trimmed fastqs). Copy the fastp.sh file to your project directory :
```
cp /tmp/gen711_project_data/fastp.sh <path to github directory>/fastp.sh
chmod +x <path to github directory>/fastp.sh
<path to github directory>/fastp.sh <path to fastq directory> <path to your output directory>
```
2. Imports the directory of poly-G trimmed FASTQ files into a single 'qiime file' with the 'qza' extension with the 'qiime tools import' command below. 
```
qiime tools import \
   --type "SampleData[PairedEndSequencesWithQuality]"  \
   --input-format CasavaOneEightSingleLanePerSampleDirFmt \
   --input-path <path to your output directory of trimmed fastqs> \
   --output-path <path to an output directory>/<a name for the output files> \
```

3. Using the primer sequence, qiime's 'cutadapt' plugin removes the primer and adapters of each pair of sequences. You need to select the correct primers to provide qiime and cutadapt. A second 'qza' output file is created for the cutadapt trimmed data. Name it something that makes sense and add the 'qza' extension, so the output path should look something like: /path/to/output/directory/cutadapt-sequences.qza. Run the 'demux summarize' to make a summary.qzv file for    

The primer list can be found [here]

```
qiime cutadapt trim-paired \
    --i-demultiplexed-sequences <path to the file from step 2> \
    --p-cores 4 \
    --p-front-f <the forward primer sequence> \
    --p-front-r <the reverse primer sequence> \
    --p-discard-untrimmed \
    --p-match-adapter-wildcards \
    --verbose \
    --o-trimmed-sequences <path to an output directory>/<name for the output files>.qza

qiime demux summarize \
--i-data <path to the file from step above> \
--o-visualization  <path to an output directory>/<a name for the output files>.qzv 
```

## Denoising 
- Sequences can be denoised using qiime, which calls the R package 'dada2'. Denoising learns the error rate from the base call quality of the samples, and tries to fix sequencing errors when possible. Read pairs are merged into a single sequence when they sufficiently overlap and align. Denoising output is another qiime object that contains a table of the counts for each unique sequence (called ASVs, rows of table) found among the samples (columns, each sample name taken from the fastqs). The ASV sequences and the ASV ids are stored in the 'rep-seqs.qza'. The table of counts for each ASV is stored in the 'feat-table.qza' file. Both objects can be exported to a human readable format (FASTA) to visually inspect the sequences and tables. Or, qiime has a number of summary functions that can be applied to the qza files. Qiime summaries and plots can be viewed [here](https://view.qiime2.org)

## Taxonomy assignment 
- Taxonomy assignment can be performed several ways. We've found that the best taxonomy assignment strategy differs between 


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

- As an additional check for the taxonomy assignments, I get the top blast hits for each ASV. If you use a specialized reference database, such as we do here, there will be many sequences with 'unassigned' taxonomy. Blasting is a way to double check that unassigned sequences are in fact off target taxa. After assigning taxonomy and blasting the sequences, I pull the results qiime and tronko taxon  


## Alpha and Beta Diversity 
- requires metadata formatted for import into qiime2

## Differential Abundance Testing
Songbird
qurro

## 7. Phylogenetic placement of ASVs

![plot](plots/jplace.png)

