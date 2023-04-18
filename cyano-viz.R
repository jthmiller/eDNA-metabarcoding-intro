cyano-viz.R

conda activate qiime2R

###
R 
library(tidyverse)
library(qiime2R)


## tree multiplicity annotation
SVs<-read_qza("LMP-table.qza")$data
SVs_df <- as.data.frame(SVs)
## should follow "sample name", "pquery name", and "new multiplicity".
SVs_tib <- rownames_to_column(SVs_df, var = "ASV") %>% as_tibble()  %>% pivot_longer(-ASV) %>% relocate(name)
write.table(SVs_tib, file='LMP-multiplicity.tsv', quote=FALSE, sep='\t', col.names = F, row.names = F)





### heatmaps
metadata <- read_q2metadata("metadata/replicate_metadata.tsv")
SVs<-read_qza("results/LMP_core-metrics-phylogenetics_03292023/LMP-table.qza")$data
taxonomy<-read_qza("results/16s_sklearn_all-taxonomy.qza")$data %>% parse_taxonomy()



## taxasums <- summarize_taxa(SVs, taxonomy)$Family
##taxasums <- summarize_taxa(SVs, taxonomy)$Genus
taxasums <- summarize_taxa(SVs, taxonomy)$Order


taxasums <- taxasums[order(rowSums(taxasums)),]

cbind( rownames(taxasums),   rowSums(taxasums))


lmp_samps <- metadata[which(metadata$Sample_Site=="LMP"),]

table(lmp_samps$Collected_Date)


plot_cyano_by_date <- function(md = metadata, dates = "8/16/2022", site = "LMP"){
   meta <- md[which(md$Sample_Site=="LMP"),]
   meta <- meta[which(meta$Collected_Date==dates),]
   sums  <- taxasums[,which(colnames(taxasums) %in% as.character(meta$SampleID) )]
   #sums <- sums[grep('Chloroplast',rownames(sums), invert = T),]
   #sums <- sums[grep('uncult',rownames(sums), invert = T),]
   #sums <- sums[grep('; NA',rownames(sums), invert = T),]
   taxa_heatmap(sums, meta, "Location", ntoplot = 5)

}

dts <- names(which(table(lmp_samps$Collected_Date) > 8))
dos <- order(lubridate::mdy(dts))
dts <- dts[dos]

ndts <- paste0('A_',dts)

pdf(file='dates.pdf', width=8, height=2)
par(mfrow=c(4,4))
 lapply(dts, function(dts){
      
      plot_cyano_by_date(md = metadata, dates = dts, site = "LMP")
   
   })
dev.off()




figure <- ggarrange(bxp, dp, lp,
                    labels = c("A", "B", "C"),
                    ncol = 2, nrow = 2)




p <- taxa_heatmap(taxasums, metadata, "Location", drop = TRUE)

p + facet_grid(rows = vars(Collected_Date))

p <- taxa_heatmap(taxasums, metadata)

p + facet_grid(rows = vars(Collected_Date), cols = vars(Location), drop = TRUE)



plot_cyano_by_date(md = metadata, dates = "9/16/2022", site = "LMP")


plot_cyano_by_date(md = metadata, dates = "9/27/2022", site = "LMP")


taxa_heatmap(taxasums_lmp_816, metadata, "Location")

ggsave("heatmap.pdf", height=4, width=8, device="pdf") # save a PDF 4 inches by 8 inches






metadata %>%
  filter(!is.na(shannon)) %>%
  ggplot(aes(x=`days-since-experiment-start`, y=shannon, color=`body-site`)) +
  stat_summary(geom="errorbar", fun.data=mean_se, width=0) +
  stat_summary(geom="line", fun.data=mean_se) +
  stat_summary(geom="point", fun.data=mean_se) +
  xlab("Days") +
  ylab("Shannon Diversity") +
  theme_q2r() + # try other themes like theme_bw() or theme_classic()
  scale_color_viridis_d(name="Body Site") # use different color scale which is color blind friendly
  ggsave("Shannon_by_time.pdf", height=3, width=4, device="pdf") # save a PDF 3 inches by 4 inches


