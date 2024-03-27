APPENDIX B

##### Activate qiime conda environment.
```
conda activate qiime2-2022.8
```
##### Import the data and put it in the output directory.
```
qiime tools import \
   --type "SampleData[PairedEndSequencesWithQuality]"  \
   --input-format CasavaOneEightSingleLanePerSampleDirFmt \
   --input-path ~/Folder/data2/reads \
   --output-path ~/Folder/file.qza
```
##### Select forward and reverse primer that were utilized on the PCR analysis (16s V4-V5)
```
GTGYCAGCMGCCGCGGTAA
CCGYCAATTYMTTTRAGTTT
```
##### Cutadapt - for adapter trimming and quality filtering of sequencing reads.
```
nohup qiime cutadapt trim-paired \
    --i-demultiplexed-sequences file.qza \
    --p-cores 4 \
    --p-front-f GTGYCAGCMGCCGCGGTAA \
    --p-front-r CCGYCAATTYMTTTRAGTTT \
    --p-discard-untrimmed \
    --p-match-adapter-wildcards \
    --verbose \
    --o-trimmed-sequences file_cutadapt.qza &
```
##### Demux - to generate a summary of demultiplexed sequencing data.
```
qiime demux summarize \
--i-data file_cutadapt.qza \
--o-visualization file_demuxsum.qzv
```
##### Denoising - truncate reads to 225 to remove low-quality bases at the end of the read (no trimming is necessary, used cutadapt).
```
nohup qiime dada2 denoise-single \
    --i-demultiplexed-seqs file_cutadapt.qza \
    --p-trunc-len 225 \
    --p-trim-left 0 \
    --p-n-threads 6 \
    --o-denoising-stats file_denoising-stats.qza \
    --o-table file_feature_table.qza \
    --o-representative-sequences file_rep-seqs.qza &
```
##### Copy sequence classifier in the output directory.
```
cp /tmp/gen711_project_data/cyano/classifier_16S_V4-V5.qza
```
Since the DNA analysis was conducted in two separate runs, with some samples analyzed initially (run 1) followed by the remaining samples (run 2), it became essential to merge the resulting files post-execution of the cutadapt, demux, and denoising commands.

##### Merge denoising tables from both runs.
```
qiime feature-table merge \
--i-tables file1_feature_table.qza file2_feature_table.qza \
--o-merged-table merged_file.table.qza
```
##### Merge denoising tables (rep-seqs) for both runs.
```
qiime feature-table merge-seqs \
--i-data file1_rep-seqs.qza file2_rep-seqs.qza \
--o-merged-data merged_file.rep-seqs.qza
```

##### Assign taxonomic classifications.
```
nohup qiime feature-classifier classify-sklearn \
   --i-classifier classifier_16S_V4-V5.qza \
   --i-reads merged_file.rep-seqs.qza \
   --o-classification file_sklearn-silva-tax.qza &
```
##### Extract the number of reads on each sample.
```
qiime tools export \
--input-path merged_file.table.qza \
--output-path merged_file.table
```
##### Filter samples that have less than 1000 reads.
```
qiime feature-table filter-samples \
  --i-table merged_file.table.qza \
  --p-min-frequency 1000 \
  --o-filtered-table merged_file-filtered.table.qza

qiime feature-table filter-samples \
  --i-table merged_file-filtered.table.qza \
  --m-metadata-file file_metadata.tsv \
  --o-filtered-table merged_file-filtered.table.qza
```
##### Generate a tabulated summary of metadata associated with samples.
```
qiime metadata tabulate \
   --m-input-file file_sklearn-silva-tax.qza \
   --o-visualization file_taxonomy.qzv
```
##### Generate bar plots that visualize the taxonomic composition of samples.
```
qiime taxa barplot \
   --i-table merged_file-filtered.table.qza \
   --i-taxonomy file_sklearn-silva-tax.qza \
   --o-visualization file_filtered-taxa-barplot.qzv \
   --m-metadata-file file_metadata.tsv
```
##### Filter out unassigned bacteria.
```
qiime taxa filter-table \
   --i-table file-filtered.table.qza \
   --i-taxonomy file_sklearn-silva-tax.qza \
   --p-exclude "Unassigned,D_0__Bacteria" \
   --p-mode exact \
   --o-filtered-table filtered-bacteria-table
```
##### Partial match to Eukaryota to filter out any Euks.
```
qiime taxa filter-table \
   --i-table filtered-bacteria-table.qza \
   --i-taxonomy file_sklearn-silva-tax.qza \
   --p-exclude "Eukaryota"\
   --o-filtered-table filtered-bacteria-table2
```
##### Combine the files of the last two commands above.
```
mv filtered-bacteria-table2.qza filtered-bacteria-table.qza
```
##### Generate new taxa bar plot after filtering.
```
qiime taxa barplot \
   --i-table filtered-bacteria-table.qza \
   --i-taxonomy file_sklearn-silva-tax.qza \
   --o-visualization filtered-bacteria-taxa-barplot \
   --m-metadata-file file_metadata.tsv
```
##### Filter sequences from feature table based on specific criteria.
```
qiime feature-table filter-seqs \
   --i-table filtered-bacteria-table.qza \
   --i-data merged_file.rep-seqs.qza \
   --o-filtered-data filtered-bacteria-rep-seqs

qiime feature-table tabulate-seqs \
   --i-data merged_ASR.rep-seqs.qza \
   --o-visualization filtered-bacteria-rep-seqs
```
##### Generate a phylogenetic tree.
```
nohup qiime phylogeny align-to-tree-mafft-fasttree \
   --i-sequences filtered-bacteria-rep-seqs.qza \
   --o-alignment filtered-aligned-rep-seqs.qza \
   --o-masked-alignment filtered-masked-aligned-rep-seqs.qza \
   --o-tree filtered-unrooted-tree.qza \
   --o-rooted-tree filtered-rooted-tree.qza \
   --p-n-threads 18 &
```
##### Alpha diversity analysis.
qiime diversity alpha \
    --i-table filtered-bacteria-table.qza \
    --p-metric shannon \
    --o-alpha-diversity filtered-file_alpha_diversity.qza


qiime diversity alpha-group-significance \
    --i-alpha-diversity filtered-file_alpha_diversity.qza \
    --m-metadata-file file_metadata.tsv \
    --o-visualization filtered-file_alpha-group-significance.qzv
```
##### Beta diversity analysis.
```
qiime diversity beta \
    --i-table filtered-bacteria-table.qza \
    --p-metric braycurtis \
    --o-distance-matrix filtered-braycurtis_distance_matrix.qza

qiime diversity beta-group-significance \
    --i-distance-matrix filtered-braycurtis_distance_matrix.qza \
    --m-metadata-file file_metadata.tsv \
    --m-metadata-column NAME \
    --o-visualization filtered-NAME_beta-group-significance.qzv
```
##### PCoA analysis.
```
qiime diversity pcoa \
   --i-distance-matrix filtered-braycurtis_distance_matrix.qza \
   --o-pcoa filtered-braycurtis_pcoa_results.qza

qiime emperor plot \
    --i-pcoa filtered-braycurtis_pcoa_results.qza \
    --m-metadata-file file_metadata.tsv \
    --o-visualization filtered-file_pcoa_plot.qzv
```
##### Collapse table according to the taxonomy level.
```
qiime taxa collapse \
  --i-table filtered-bacteria-table.qza \
  --i-taxonomy file_sklearn-silva-tax.qza \
  --p-level X \
  --o-collapsed-table filtered-bacteria-LX-table.qza
```
##### Heatmap.
```
qiime feature-table heatmap \
   --i-table filtered-bacteria-LX-table.qza \
   --m-sample-metadata-file file_metadata.tsv \
   --m-sample-metadata-column NAME\
   --p-normalize True \
   --p-metric euclidean \
   --p-cluster both \
   --p-color-scheme Oranges \
   --o-visualization filtered-LX-NAME_heatmap.qzv
```
