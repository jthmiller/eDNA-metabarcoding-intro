# eDNA-metabarcoding-guide for gen711/811

This is an introduction analyzing eDNA metabarcoding samples to evaluate diversity, assign taxonomy, and differential abundance testing. Taxonomy assignments are compared between vsearch (qiime), command line BLAST, and Tronko (a recent phylogenetic approach to taxonomy assignment).   

1. Metabarcoding to compare fish species across US estuaries.
```
/tmp/gen711_project_data/fish/fastqs
```
2. Metabarcoding of Algae (Diatoms) to compare high and low quality streams.
```
/tmp/gen711_project_data/algae/fastqs
```
3. Fecal microbiota transplant (FMT) study. Metabarcoding of human guts.
```
/tmp/gen711_project_data/FMT_3/fmt-tutorial-demux-2
/tmp/gen711_project_data/FMT_3/fmt-tutorial-demux-1

/tmp/gen711_project_data/fastp-single.sh

```
4. Cyanobacteria
```
/tmp/gen711_project_data/cyano/fastqs
```
or, your choice (ok with us to make sure it is feasible)

## Before you start...
For many of the commands below, you will need to replace the text between the < and > symbol with a path and file name. For example, if I made a directory to hold my qiime import output file called 'output' in my home directory, I would replace the '--output-path <path to an output directory>/<a name for the output files>.qza' part with '--output-path /home/unhAW/jtmiller/output/qiime_imported_file.qza' to run the command. 

Once the data has been imported into qiime, all the data will be held in one or two files with the '.qza' extension. However, we will also generate some visualizations of the 'qza' files to view at qiime-view.org. We should give these files a '.qzv' extenstion instead (example: see 2nd command of step 3)

Make a directory to hold your files like fastqs just outside your github directory (such as trimmed_fastqs). When you run 'ls' from your home directory, it should look something like this: 
```
> ls
github-project-directory    gen711    shell_data   trimmed_fastqs 
```
When you make an output file that you want to download, you can move it into your github project directory, add/upload it to your github repo, and then view/download it from there. 

```
cd <my_github_project_on_ron_directory>
git add <file-to-add-to-repo.qzv>
git commit -m 'any note that you want'
git push
```
If you get an error about the password and token, ask for help. We will help you fix it. 

## Overview of pipeline
Steps:
1. Run Fastp to trim the 'poly-g' tails of the reads
2. Import the directory of reads with qiime and save the output in your directory
3. Use the 'cutadapt' program in qiime to trim off the primers
4. Start the denoising the reads (removing the low quality reads/bases)
5. Start here next week's lab

## Before you can run programs like fastp and qiime, activate an environment 
```
### To run fastp for trimming
conda activate genomics

### To run any of the qiime commands
conda activate qiime2-2022.8
```
Once you've activated an environment, it should be listed on your command line instead of 'base'. See the example below.
```
(base) jtmiller@ron:~$ conda activate qiime2-2022.8
QIIME is caching your current deployment for improved performance. This may take a few moments and should only happen once per deployment.
(qiime2-2022.8) jtmiller@ron:~$ 
```


## FASTQ sample QA/QC
1. Fastp is used to trim off the poly-G tail commonly found in amplicon nova-seq data. Run the fastp script by replacing the paths (the first one is to the directory of fastq files to trim, and then the path to your output directory that you made to store the trimmed fastqs). Copy the fastp.sh file to your project directory :
```
cp /tmp/gen711_project_data/fastp.sh <path to github directory>/fastp.sh
chmod +x <path to github directory>/fastp.sh

### For the FMT study
cp /tmp/gen711_project_data/fastp-single.sh <path to github directory>/fastp-single.sh
chmod +x <path to github directory>/fastp-single.sh

```
The fastp script need 3 things:
1. the poly-g length cutoff
2. the directory of the reads to trim
3. the directory that you will store the reads in

```
<path to github directory>/fastp.sh <1.poly-g length> <1.path to fastq directory>  <3.path to your output directory>

### For the FMT study
<path to github directory>/fastp-single.sh 120 <1.path to fastq directory>  <3.path to your output directory>

```
2. Next, import the directory of poly-G trimmed FASTQ files into a single 'qiime file' with the 'qza' extension with the 'qiime tools import' command below. If you are doing the Fecal transplant study, you will need to run this command twice, once for the demux-1 directory and once for the demux-2 directory. Give the output a different name the second time you run it ( such as 'demux-1.qza' and 'demux-2.qza')
```
qiime tools import \
   --type "SampleData[PairedEndSequencesWithQuality]"  \
   --input-format CasavaOneEightSingleLanePerSampleDirFmt \
   --input-path <path to your output directory of trimmed fastqs> \
   --output-path <path to an output directory>/<a name for the output files> \
```

3. Using the primer sequence, qiime's 'cutadapt' plugin removes the primer and adapters of each pair of sequences. You need to select the correct primers to provide qiime and cutadapt. A second 'qza' output file is created for the cutadapt trimmed data. Name it something that makes sense and add the 'qza' extension, so the output path should look something like: /path/to/your/output/directory/cutadapt-sequences.qza. Run the 'demux summarize' on this file to make a summary.qzv file to view later. For the FMT study, you will run the command twice (once for 'demux-1.qza' and once for 'demux-2.qza'). Name the outputs something like cutadapt-sequences-1.qza and cutadapt-sequences-2.qza.

The primer list can be found [here](primer-list.md)

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

```
qiime dada2 denoise-paired \
    --i-demultiplexed-seqs qiime_out/${run}_demux_cutadapt.qza  \
    --p-trunc-len-f  \
    --p-trunc-len-r ${trunclenr} \
    --p-trim-left-f 0 \
    --p-trim-left-r 0 \
    --p-n-threads 4 \
    --o-denoising-stats <path to an output directory>/denoising-stats.qza \
    --o-table <path to an output directory>/feature_table.qza \
    --o-representative-sequences <path to an output directory>/rep-seqs.qza

qiime metadata tabulate \
    --m-input-file <path to an output directory>/denoising-stats.qza \
    --o-visualization <path to an output directory>/denoising-stats.qzv

qiime feature-table tabulate-seqs \
        --i-data <path to an output directory>/rep-seqs.qza \
        --o-visualization <path to an output directory>/rep-seqs.qzv
```

## Taxonomy assignment (If you made it to this point on 4/21, you can stop for the day)
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

