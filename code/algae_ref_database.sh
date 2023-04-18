algae_ref_database.sh

## Rsyst

https://esajournals.onlinelibrary.wiley.com/doi/full/10.1002/eap.2812?sid=nlm%3Apubmed




## rbcl primer
fw1="AGGTGAAGTAAAAGGTTCWTACTTAAA"
fw2="AGGTGAAGTTAAAGGTTCWTAYTTAAA"
fw3="AGGTGAAACTAAAGGTTCWTACTTAAA"
rv1="CCTTCTAATTTACCWACWACTG"
rv2="CCTTCTAATTTACCWACAACAG"



### Format diat_barcode data #####################
mothur_tax <- read.table("~/watts/ref-database/rbcl/diat_barcode_v10_263bp_mothur_tax.txt", sep = "\t", header = F, stringsAsFactors = F)
taxa <- data.frame(do.call(rbind,strsplit(mothur_tax$V2, ";")))


kingdom <- paste("k__",taxa$X2, sep = "")
phylum <- paste("p__",taxa$X4, sep = "")           
class<- paste("c__",taxa$X5, sep = "")         
order <- paste("o__",taxa$X6, sep = "")             
family <- paste("f__",taxa$X7, sep = "")       
genus <- paste("g__",taxa$X8, sep = "")   
species <- paste("s__",taxa$X9, sep = "")  

out <- data.frame(kingdom,phylum,class,order,family,genus,species, stringsAsFactors = F)

mothur_tax <- gsub("__", ".", mothur_tax$V1)
mothur_tax <- gsub("_", ".", mothur_tax)

out <- data.frame(mothur_tax, apply(out,1, paste, collapse = ";"))
write.table(out, file = '~/watts/ref-database/rbcl/mothur_tax.tsv', sep = '\t', row.names = F, col.names = F, quote = F)

######################################################

mkdir blast_Rsyst
makeblastdb -in Rsyst_230218_align_1401seqs_312bp_vf.fasta  -out blast_Rsyst/Rsyst.bdb -dbtype 'nucl' -hash_index


mkdir blast_diat.barcode 
makeblastdb -in no_spec_info.fasta  -out blast_diat.barcode/diat.barcode.bdb -dbtype 'nucl' -hash_index


qiime tools import \
    --type "FeatureData[Taxonomy]" \
    --input-format "HeaderlessTSVTaxonomyFormat" \
    --input-path mothur_tax.tsv \
    --output-path mothur-tax

qiime tools import \
    --type "FeatureData[Sequence]" \
    --input-path ws_diat_barcode_v10_263bp_qiime \
    --output-path diat_barcode_v10_263bp_qiime



qiime tools import \
    --type "FeatureData[Taxonomy]" \
    --input-format "HeaderlessTSVTaxonomyFormat" \
    --input-path no_spec_info.tax \
    --output-path no_spec_info-tax

qiime tools import \
    --type "FeatureData[Sequence]" \
    --input-path no_spec_info.fasta \
    --output-path no_spec_info-fasta





qiime tools import \
    --type "FeatureData[Taxonomy]" \
    --input-format "HeaderlessTSVTaxonomyFormat" \
    --input-path  Rsyst_230218_align_1401seqs_312bp_vf.txt \
    --output-path Rsyst_230218_align_1401seqs_312bp_vf-tax

qiime tools import \
    --type "FeatureData[Sequence]" \
    --input-path Rsyst_230218_align_1401seqs_312bp_vf.fasta \
    --output-path Rsyst_230218_align_1401seqs_312bp_vf-seq

