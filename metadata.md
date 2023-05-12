# Metadata
For most projects below, I would reccommend downloading the metadata file to open it up in excel. It will be easier to read that way

## FMT   
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

References to consider (google terms such as 'fecal microbiome transfer'):
For more information on this data, see: https://microbiomejournal.biomedcentral.com/articles/10.1186/s40168-016-0225-7

## Cyano 
We don't know if it is the large or small (picocyanobacteria) cyanobacteria that make all the poisonous toxins in a harmful cyanobacteria bloom. This study targets eDNA of bacteria (the 16s metabarcoding locus) in water samples taken from a lake in a bloom. The study compares a filteration method (Sample_Methods: <5, to target picocyanobacteria) to whole lake water (large cyanobacteria) and surface water (BFC, bloomforming cyanobacteria, the stuff at the surface) water samples during a cyanobacteria bloom. 

References to consider (google terms such as picocyanobacteria eDNA metabarcoding):
https://www.sciencedirect.com/science/article/pii/S1568988322000166
https://academic.oup.com/femsec/article/97/7/fiab075/6294907

Important metadata columns:
 Sample_Method: <5, BFC, WLW 

## Fish
This is a simple study comparing fish species (mifish locus, or 12s metabarcoding) in the lamprey river (LR), Oyster River (OR), and the Squamscott River (SQ). Why might the number of species (diversity) be different in these location of the Great Bay watershed? Look up news on the rivers, and see if anything might explain the differeces in fish species between them. 
site: LR, OR, SQ

References to consider (google terms such as 'mifish metabarcoding', 'eDNA fish monitoring'):
https://www.nature.com/articles/srep40368
https://www.sciencedirect.com/science/article/pii/S2772735122000038

## Algae
This study is searching for diatom species that can be used as indicators of stream health. Rather than look for the species of diatoms with microscopes, we are hoping to find indicator species with eDNA (rbcl metabarcoding locus).

Do samples group (in PCA) according 
Important metadata columns:
Latitude, Longitude - Compare species diversity or abundance as an effect of lat long
DIST_Cat - Disturbance category. Use this to see if there are difference in samples that come from  

References to consider (google terms such as diatom metabarcoding, bioindicators, eDNA):
https://www.frontiersin.org/articles/10.3389/fevo.2019.00409/full



#SampleID
Run
Renamed
Sample
State
Year
class
Sample_Site
Collected_Date
WaterbodyName
Latitude
Longitude
COMID_Final
US_L4CODE
US_L3CODE
DIST_Cat
Sc_ICWI
Sc_PctUrb
Sc_PctAg
Sc_AllAgN
Sc_RdDens
Sc_DamNrmStor
CatAreaSqKm
WsAreaSqKm
BFICat
ElevCat
Na2OCat
Al2O3Cat
CaOCat
Fe2O3Cat
SiO2Cat
MgOCat
SCat
P2O5Cat
K2OCat
NCat
HydrlCondCat
CompStrgthCat
ICI_v2_1
PctImp2019Cat
AgKffactCat
KffactCat
PctGlacTilCrsCat
SN_2008Cat
NO3_2008Cat
InorgNWetDep_2008Cat
NH4_2008Cat
PctUrban2019Cat
PctForest2019Cat
PctAg2019Cat
PctWetland2019Cat
PctHay2019Cat
PctCrop2019Cat
NsurpCat
NANICat
PrecipCat
TmaxCat
TmeanCat
TminCat
MSST_Avg
RockNCat
RunoffCat
ClayCat
SandCat
WtDepCat
OmCat
PermCat
RckDepCat
sw_fluxCat
WaterInputCat
wdrw_LDCat
WetIndexCat