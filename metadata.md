
 ## FMT   

For more information on this data, see: https://microbiomejournal.biomedcentral.com/articles/10.1186/s40168-016-0225-7

The text below was lifted from the FMT tutorial: https://docs.qiime2.org/2022.2/tutorials/fmt/

The data used in this tutorial is derived from a Fecal Microbiome Transplant study where children under the age of 18 with autism and gastrointestinal disorders, as measured by the Autism Diagnostic Interview-Revised (ADI-R) and Gastrointestinal Symptom Rating Scale (GSRS), respectively, were treated with fecal microbiota transplant in attempt to reduce the severity of their behavioral and gastrointestinal symptoms. We tracked changes in their microbiome, several metrics of the severity of autism including the Parent Global Impressions-III (PGI-III) and the Childhood Autism Rating Scale (CARS), and the severity of their gastrointestinal symptoms through their GSRS score over an eighteen week period. The microbiome was tracked through collection of weekly fecal swab samples (collected by swabbing used toilet paper) and less frequent stool samples (collected as whole stool). In the full study, which was a phase 1 clinical trial designed to test safety of the treatment, eighteen individuals received the treatment, and twenty individuals were followed as controls. The controls did not receive the treatment, but were monitored to track normal temporal variation in the gut microbiome. The fecal material that was transplanted during treatment was also sequenced in this study.

sequencing-run run1, run2 
sample-type   stool, swab  
treatment-group treatment, control
subject-id B101, B103, B105, B107, B109, B141, B143, B145, B147, B159, BBT2014-00029, BBT2014-00035, BBT2014-00036, BBT2014-00037, BBT2014-00038 
week  0, -1, 10, 12, 14, 16, 18, 2, 3, 4, 6, 8  
gsrs    1, 1.1, 1.3, 1.4, 1.5, 1.6, 1.8, 2, 2.1, 2.2, 2.3, 2.4, 2.6, 2.8, 2.9, 3, 3.7
gsrs-diff   0, -0.1, 0.1, 0.2, -0.4, -0.5, -0.8, 0.8, -1, -1.1, -1.2, -1.3, 1.3, -1.4, -1.5, -1.6, -1.8    
administration-route  Oral, Rectal  
age     10.3, 10.7, 12.1, 12.5, 12.6, 16.1, 16.5, 7.1, 8.1, 8.4
gender  m, f
weight  100, 113, 165, 242, 50, 56, 63, 70, 80
height  50, 51, 51.5, 53, 55, 57, 61, 65, 70
bmi 14.8-24

## Cyano 
We don't know if it is the large or small (picocyanobacteria) cyanobacteria that make all the poisonous toxins in a harmful cyanobacteria bloom. This study targets eDNA of bacteria (the 16s metabarcoding locus) in water samples taken from a lake in a bloom. The study compares a filteration method (Sample_Methods: <5, to target picocyanobacteria) to whole lake water (large cyanobacteria) and surface water (BFC, bloomforming cyanobacteria, the stuff at the surface) water samples during a cyanobacteria bloom. 

Important metadata columns:
 Sample_Method: <5, BFC, WLW 

## Fish
This is a simple study comparing fish species (mifish locus, or 12s metabarcoding) in the lamprey river (LR), Oyster River (OR), and the Squamscott River (SQ). Why might the number of species (diversity) be different in these location of the Great Bay watershed? Look up news on the rivers, and see if anything might explain the differeces in fish species between them. 
site: LR, OR, SQ


## Algae
This study is searching for diatom species that can be used as indicators of stream health. Rather than look for the species of diatoms with microscopes, we are hoping to find indicator species with eDNA (rbcl metabarcoding locus).

Do samples group (in PCA) according 
Important metadata columns:


more to come on this ... 