# Metabarcoding algae from rbcl 

Differences to discuss:
- Specifying multiple forward/reverse primers vs primer pair with wobble for rbcl
- Choosing the ```--p-trunc-len-f``` and ```--p-trunc-len-r``` from the quality plots. This step has the potential to impact results across workflows/users. 
    - Truncating too short --> reads will not merge up. 
    - Truncating too long --> more ASVs due to more sequencing errors at ends of reads. 
- Minimum overlap ```--p-min-overlap``` at denoising will 

To do:
- add diat.barcode tree and reference database 
- add qiime2 and tronko taxonomy assignment workflow
- add sample dataset for compare Susie/Jeff workflow
    - The fastqs will need to be provided via google drive or other
    - Rep-seq and feature tables for the sample dataset are [here](data/)

### Overview of pipeline
This repo is to compare pipelines for evaluating diversity, assigning taxonomy, and differential abundance testing on environmental algae samples and rbcl amplicons (vers). The pipeline uses the [diat.barcode](https://www.nature.com/articles/s41598-019-51500-6) reference database. Raw sequence data is processed to ASVs with DADA/Qiime2. Taxonomy assignments are compared between vsearch in [Qiime2](https://qiime2.org), command line BLAST, and [Tronko](https://github.com/lpipes/tronko) (a recent phylogenetic approach to taxonomy assignment). The conda environment for the pipeline is [here](qiime2-env.yml)   

## FASTQ sample QA/QC

- The 2-color chemistry of recent illumina sequencing platforms results in long, poly-g tails added to sequenced fragments that are less than 250-bp ling. Fastp can trim off the poly-G tails reads and toss those that are below a threshold (usually the primer-dimer reads that are trimmed to ~75-bp or so). If you are not using Novaseq data, you can skip this step


- Qiime imports the directory of demultiplexed FASTQ files (poly-G trimmed FASTQ files if performed) into a single 'qiime file' with the 'qza' extension. Replace '<path>' in the command below with the full path to the directory that holds the demultiplexed FASTQs. Qiime may throw an error if any other files are in the directory. Qiime will recognize FASTQ file naming conventions to determine the name of each sample. The forward and reverse read FASTQs should have the same name, except 'R1' and 'R2' in the names, respectively. Before you import the files, make a directory to hold all of your qiime output called 'out'. The qiime 'artifact' file will be called 'demux.qza' inn the 'out' directory. Qiime can add the '.qza' to the filename for you. This file contains all of the sequences for each sample in the FASTQ directory.

TLDR: Replace <path> in the command below with the path of the directory of fastq files (remove all non-fastq files from the directory) and run the command. Import all samples of a single library together. Do not import multiple libraries together.    
```
mkdir out

qiime tools import \
    --type "SampleData[PairedEndSequencesWithQuality]"  \
    --input-format CasavaOneEightSingleLanePerSampleDirFmt \
    --input-path <path> \
    --output-path out/demux
```

Next, Qiime calls the program [cutadapt](https://cutadapt.readthedocs.io/en/stable/guide.html) filter out reads that do not have the primer sequence, and to trim off the sequences from reads that do. We provide the primer sequence. Cutadapt will remove the primer sequence AND any other bases that came before it. 

Read pairs that do not contain the primer sequences are tossed (--p-discard-untrimmed option). After running the cutadapt plugin, view the cutadapt log file to determine what proportions of the read pairs made it through this step. If percentages are low or 0, there may be issues with the primer sequences that you provided or the sequences were already trimmed during demultiplexing. If your sample has some, but a very low percentage of reads that pass this filter, there may be problems with the library. Blanks and negative controls are expected to have very few reads passing this stage. 

A new 'qza' file is created for the trimmed sequences for all of the samples. This is the file that will be used for next step, 'denoising'.  

```qiime cutadapt trim-paired \
    --i-demultiplexed-sequences out/demux.qza \
    --o-trimmed-sequences out/demux_cutadapt.qza \
    --p-cores 16 \
    --p-front-f AGGTGAAGTAAAAGGTTCWTACTTAAA \
    --p-front-f AGGTGAAGTTAAAGGTTCWTAYTTAAA \
    --p-front-f AGGTGAAACTAAAGGTTCWTACTTAAA \
    --p-front-r CCTTCTAATTTACCWACWACTG \
    --p-front-r CCTTCTAATTTACCWACAACAG \
    --p-discard-untrimmed \
    --p-match-adapter-wildcards \
    --verbose > out/cutadapt.log 2>&1 

 qiime demux summarize \
    --i-data out/demux_cutadapt.qza \
    --o-visualization out/demux_cutadapt
```
## Denoising 
- Sequences can be denoised using qiime, which calls the R package 'dada2'. Denoising learns the error rate from the base call quality of the samples, and tries to fix sequencing errors when possible, and merges read pairs into a single sequence when they sufficiently overlap and align. The ```--p-min-overlap``` is set to 12 by default. Larger amplicons may have fewer than 12 bases that overlap, and setting this to a number that is too high will result in discarding true amplicon sequences that couldn't meet the overlap criteria. Setting this too short will result in keeping chimeras that slow down the downstream analyses.   

- Denoising output is another qiime object (.qza) that is a compressed table of the counts for each unique sequence (called ASVs, rows of table) found among the samples (columns, each sample name taken from the fastqs). The ASV sequences and the ASV ids are stored in the 'rep-seqs.qza'. The table of counts for each ASV will be stored in the 'feat-table.qza' file. Both objects can be exported to a human readable format (FASTA) to visually inspect the sequences and tables. Or, qiime has a number of summary functions that can be applied to the qza files. Qiime summaries and plots can be viewed [here](https://view.qiime2.org)

Replece <threads> with the number (ex: 12) of CPUs you have access to for running the analysis. If you are running this on a HPC, this is the number of CPUs you reserved for the job with the scheduler (such as PBS or SLURM). If you are running this on a laptop, you will have fewer CPUS to use (ex: 2). If this is a small test dataset, replace '<threads>' with '1'. 
```
qiime dada2 denoise-paired \
    --i-demultiplexed-seqs out/demux_cutadapt.qza  \
    --p-trunc-len-f 175 \
    --p-trunc-len-r 175 \
    --p-trim-left-f 0 \
    --p-trim-left-r 0 \
    --p-n-threads <threads> \
    --o-denoising-stats out/dns \
    --o-table out/table \
    --o-representative-sequences out/rep-seqs \
    --verbose > out/Dada2_denoising.log 2>&1
```

## Taxonomy assignment 
Taxonomy assignment can be performed several ways. We've found that the best taxonomy assignment strategy differs between metabarcoding loci and sample composition. Our approach is to run multiple assignment methods. Here, we will use a Qiime plugin of, VSEARCH to assign taxonomy to our sequences using a refernce database of sequences with known taxonomy.  

The reference database of rbcl for Qiime from the diat.barcode database with [this](code/algae_ref_database.sh). After taxonomy assignment, we can generate an interactive barplot to explore the data. 

For each of your ASVs, VESEARCH sorts the reference database using Kmer overlap of the reference sequences and the ASV sequence. 


VESEARCH performs well. More recent methods are better. Training a 

In later steps, the code for phylogenetic placement with TRONKO is provided. 

Qiime VSEARCH reference taxonomy: ref-dbs/diat_barcode_v10_263bp-tax.qza
Qiime VSEARCH reference sequences: ref-dbs/diat_barcode_v10_263bp-seq.qza  

The optimal parameters used for feature-classification (or, assigning taxonomy) can vary between target locus, reference databases, and other factors. The parameters that play a large role in taxonomic assignment is --p-maxaccepts and --p-perc-identity. Setting --p-maxaccepts too high and --p-perc-identity too low will result in taxonomic assignments (fewer ASVs identified to the species level). Reducing --p-maxaccepts might result in more sequences that are falsely assigned to the species level. Reducing both will result in many ASVs tossed into the 'Unassigned' bin. I reccommemnd starting with the qiime defaults and taking a look at the results. If nothing is assigned to the species level and you have many unassigned ASVs, consider relaxing these parameters. If you are getting all sequences assigned to the species level, consider running with more restrictive parameters (decrease perc-identity and increase number of accepts).


  --p-maxaccepts 10 \
  --p-perc-identity 0.8 \


Other important to parameters to consider
--p-weak-id 0.50 
  
  
    --p-query-cov 1 \ 
        --p-threads 12 \



For tophits:
 --p-top-hits-only True
 --p-maxaccepts 10


```
qiime feature-classifier classify-consensus-vsearch \
  --i-query out/rep-seqs.qza \
  --i-reference-reads ref-dbs/diat_barcode_v10_263bp-seq.qza \
  --i-reference-taxonomy ref-dbs/diat_barcode_v10_263bp-tax.qza \
  --p-maxaccepts 10 \
  --p-query-cov 0.8 \
  --p-perc-identity 0.8 \
  --p-threads 12 \
  --p-weak-id 0.50 \
  --o-classification out/vsearch_taxonomy

qiime taxa barplot \
  --i-table out/table.qza \
  --i-taxonomy out/vsearch_taxonomy.qza \
  --o-visualization out/taxa-barplot \
  --m-metadata-file out/dns.qza 
```
## Tree from ASVs Alignments 
```
qiime phylogeny align-to-tree-mafft-fasttree \
   --i-sequences out/rep-seqs.qza \
   --o-alignment out/aligned-rep-seqs \
   --o-masked-alignment out/masked-aligned-rep-seqs.qza \
   --o-tree out/unrooted-tree.qza \
   --o-rooted-tree out/rooted-tree.qza \
   --p-n-threads 18
```
### Core Diversity Metrics of ASVs
```
qiime diversity core-metrics-phylogenetic \
    --i-phylogeny out/rooted-tree.qza \
    --i-table out/assigned-table_SAMPLES.qza \
    --p-sampling-depth  <depth> \
    --m-metadata-file metadata/K-site-metadata.tsv \
    --output-dir out/core-metrics-results
```




##### Tronko (code/tronko_tax.sh)
- See installation instructions for tronko [here](https://github.com/lpipes/tronko). 
- The reference database of rbcl for tronko was built from [diat.barcode](https://github.com/fkeck/diatbarcode) with [this](script for building): 
    - Tree: ref-dbs/rbcl_diat.barcode-ref-tree.txt
    - FASTA: ref-dbs/rbcl_diat.barcode-MSA.fasta
    - Need to add this

#### Visualizing the taxonomy assignments
Qiime2 can generate helpful interactive barplots of the taxa abundance for sample 

#### Optional steps:
As an additional check for the taxonomy assignments, I get the top blast hits for each ASV. If you use a specialized reference database, such as we do here, there will be many sequences with 'unassigned' taxonomy. Blasting is a way to double check that unassigned sequences are in fact off target taxa. After assigning taxonomy and blasting the sequences, I pull the results qiime and tronko taxon  


## Alpha and Beta Diversity 
- requires metadata formatted for import into qiime2

## Differential Abundance Testing
Songbird
qurro

## 7. Phylogenetic placement of ASVs

![plot](plots/jplace.png)

