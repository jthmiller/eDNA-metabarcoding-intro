
tag='2021.9'
### run 
code/run-qiime2.sh \
    16Mer020722_AW_LakesMF \
    data/invasive 
    cobb.sr.unh.edu/managed/220207_A01346_0046_AHFM75DRXY_16Mer020722_AW_MaineMF/reads





## Mifish 
code/run-qiime2.sh \
    16Mer020722_AW_LakesMF \
    data/invasive 	\
    raw-data/cobb.sr.unh.edu/managed/220207_A01346_0046_AHFM75DRXY_16Mer020722_AW_LakesMF/reads \
    8 \
    mifish &> data/runlog.16Mer020722_AW_LakesMF.tax.out

## 220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_OR7MF
code/qiime2_taxonomy.sh \
    16Mer022822_AW_OR7MF \
    data/test_samples	\
    raw-data/cobb.sr.unh.edu/managed/220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_OR7MF/reads \
    12 \
    mifish &> data/runlogs/runlog.16Mer022822_AW_OR7MF

## 220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_2021WRMF
code/qiime2_taxonomy.sh \
    16Mer022822_AW_2021WRMF \
    data/wells \
    raw-data/cobb.sr.unh.edu/managed/220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_2021WRMF/reads \
    12 \
    mifish &> data/runlogs/runlog.16Mer022822_AW_2021WRMF


## Klymus
code/run-qiime2.sh \
    16Mer020722_AW_Klym \
    data/algae	\
    raw-data/cobb.sr.unh.edu/managed/220207_A01346_0046_AHFM75DRXY_16Mer020722_AW_Klym/reads \
    20 \
    klymus &> data/algae/runs/16Mer020722_AW_Klym/runlog.16Mer020722_taxonomy.out


###################
### 210625_A01346_0021_BHFLJ2DRXY_16MerAW_AquaCulMF_062521
#### this is wrong- ran as klymus, is mifish
code/run-qiime2.sh \
    16MerAW_AquaCulMF_062521 \
    data/greatbay	\
    raw-data/cobb.sr.unh.edu/managed/210625_A01346_0021_BHFLJ2DRXY_16MerAW_AquaCulMF_062521/reads \
    12 \
    klymus &> data/runlogs/runlog.16MerAW_AquaCulMF_062521.out
### I must have re-ran this because it was run with mifish parameters (checked provenence)
####################


## 18s

## 210625_A01346_0021_BHFLJ2DRXY_16MerAW_AquaCu18s_062521
code/qiime2_taxonomy.sh \
    16MerAW_AquaCu18s_062521 \
    data/greatbay	\
    raw-data/cobb.sr.unh.edu/managed/210625_A01346_0021_BHFLJ2DRXY_16MerAW_AquaCu18s_062521/reads \
    12 \
    18s &> data/runlogs/runlog.16MerAW_AquaCu18s_062521

## 210927_A01346_0031_BHFLLFDRXY_16Mer100121_AW_SC18s
code/qiime2_taxonomy.sh \
    16Mer100121_AW_SC18s \
    data/greatbay	\
    raw-data/cobb.sr.unh.edu/managed/210927_A01346_0031_BHFLLFDRXY_16Mer100121_AW_SC18s/reads \
    12 \
    18s &> data/runlogs/runlog.16Mer100121_AW_SC18s

## 210927_A01346_0031_BHFLLFDRXY_16Mer100121_AW_SC18s

code/qiime2_taxonomy.sh \
    16Mer100121_AW_SC18s \
    data/greatbay	\
    raw-data/cobb.sr.unh.edu/managed/210927_A01346_0031_BHFLLFDRXY_16Mer100121_AW_SC18s/reads \
    12 \
    18s &> data/runlogs/runlog.16Mer100121_AW_SC18s

## 211112_A01346_0037_AHFM2GDRXY_16Mer102621_AW_GBSW_18s
code/qiime2_taxonomy.sh \
    16Mer102621_AW_GBSW_18s \
    data/greatbay	\
    raw-data/cobb.sr.unh.edu/managed/211112_A01346_0037_AHFM2GDRXY_16Mer102621_AW_GBSW_18s/reads \
    12 \
    18s &> data/greatbay/runlog.16Mer102621.out


## 220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_2021MEalg18s
code/qiime2_taxonomy.sh \
    16Mer022822_AW_2021MEalg18s \
    data/algae \
    raw-data/cobb.sr.unh.edu/managed/220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_2021MEalg18s/reads \
    12 \
    18s &> data/runlogs/runlog.16Mer022822_AW_2021MEalg18s



#ls /home/share/databases/SILVA_databases/SILVA_132_QIIME_release/taxonomy/taxonomy_all/99/majority_taxonomy_all_levels.qza
#df /home/share/databases/SILVA_databases/SILVA_132_QIIME_release/taxonomy/taxonomy_all/99/
## 16s

## 210927_A01346_0031_BHFLLFDRXY_16Mer100121_AW_SC16s
code/qiime2_taxonomy.sh \
    16Mer100121_AW_SC16s \
    data/greatbay \
    raw-data/cobb.sr.unh.edu/managed/210927_A01346_0031_BHFLLFDRXY_16Mer100121_AW_SC16s/reads \
    12 \
    16s &> data/runlogs/runlog.16Mer100121_AW_SC16s

## 220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_MV16s
code/qiime2_taxonomy.sh \
    16Mer022822_AW_MV16s \
    data/cyano \
    raw-data/cobb.sr.unh.edu/managed/220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_MV16s/reads \
    12 \
    16s &> data/runlogs/runlog.16Mer022822_AW_MV16s

## 220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_MV16s
code/qiime2_taxonomy.sh \
    16Mer022822_AW_MV16s \
    data/cyano \
    raw-data/cobb.sr.unh.edu/managed/220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_MV16s/reads \
    12 \
    16s &> data/runlogs/runlog.16Mer022822_AW_MV16sb



## 220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_MV16s
code/qiime2_taxonomy.sh \
    16Mer040522_AW_LM \
    data/test_samples \
    raw-data/cobb.sr.unh.edu/managed/220405_A01346_0054_BHMWHNDRXY_16Mer040522_AW_LM/reads \
    12 \
    mifish &>> data/runlogs/runlog.16Mer040522_AW_LM

## 220418_A01346_0057_AH5JVCDRX2_16Mer041822_AW_SvKMF
code/qiime2_taxonomy.sh \
    16Mer041822_AW_SvKMF \
    data/test_samples \
    raw-data/cobb.sr.unh.edu/managed/220418_A01346_0057_AH5JVCDRX2_16Mer041822_AW_SvKMF/reads \
    12 \
    mifish &>> data/runlogs/runlog.16Mer041822_AW_SvKM


## 220418_A01346_0057_AH5JVCDRX2_16Mer041822_AW_SvKMF
code/qiime2_taxonomy.sh \
    16Mer042822_AW_HADAR \
    data/test_samples \
    raw-data/cobb.sr.unh.edu/managed/220428_A01346_0058_BH5JY7DRX2_16Mer042822_AW_HADAR/reads \
    12 \
    mifish &>> data/runlogs/runlog.16Mer042822_AW_HADAR

## 16Mer073021 mifish
code/qiime2_taxonomy.sh  \
    16Mer073021_AW_OYS7 \
    data/test_samples \
    raw-data/raw-data_copied_from_DT/16Mer073021_AW_OYS7/reads \
    12 \
    mifish &>> data/runlog.16Mer073021.out




## 220509_A01346_0059_AH5HVKDRX2_16Mer050922_AW_HDAR_MF
## 16Mer050922_AW_HDAR_MF mifish
code/qiime2_taxonomy.sh  \
    16Mer050922_AW_HDAR_MF \
    data/test_samples \
    raw-data/cobb.sr.unh.edu/managed/220509_A01346_0059_AH5HVKDRX2_16Mer050922_AW_HDAR_MF/reads \
    24 \
    mifish &>> data/runlog.16Mer050922_AW_HDAR_MF.out



code/qiime2_taxonomy.sh \
     16Mer102621_AW_GBSW_MF \
     data/greatbay/ \
     raw-data/cobb.sr.unh.edu/managed/211112_A01346_0037_AHFM2GDRXY_16Mer102621_AW_GBSW_MF/reads \
     24 \
     mifish &> data/greatbay/runlog.16Mer102621.out


### not done?
code/qiime2_taxonomy.sh  \
    16Mer121721_AW_MF \
    data/greatbay \
    raw-data/cobb.sr.unh.edu/managed/211217_A01346_0041_BHFMJJDRXY_16Mer121721_AW_MF/reads \
    24 \
    mifish &> data/runlog.16Mer121721_AW_MF.out





## 16Mer071621_AW_SeaFGB_18s
code/qiime2_taxonomy.sh \
    16Mer071621_AW_SeaFGB_18s \
    data/greatbay	\
    raw-data/raw-data_copied_from_DT/16Mer071621_AW_SeaFGB_18s \
    24 \
    18s &> data/runlogs/runlog.16Mer071621_AW_SeaFGB_18s

## 16Mer071621_AW_SeaFGB_16s
code/qiime2_taxonomy.sh \
    16Mer071621_AW_SeaFGB_16s \
    data/greatbay	\
    raw-data/raw-data_copied_from_DT/16Mer071621_AW_SeaFGB_16s \
    24 \
    16s &> data/runlogs/runlog.16Mer071621_AW_SeaFGB_16s

## 061720_AW_GBH18s
code/qiime2_taxonomy.sh  \
    061720_AW_GBH18s \
    data/greatbay \
    raw-data/raw-data_copied_from_DT/061720_AW_GBH18s/ \
    24 \
    18s &>> data/runlog.061720_AW_GBH18s.out

## Project_AW_18s_GBHabitat 1840657.pts-405.ron
code/qiime2_taxonomy.sh  \
    Project_AW_18s_GBHabitat \
    data/greatbay \
    /home/unhAW/jtmiller/watts/raw-data/raw-data_copied_from_DT/Project_AW_18s_GBHabitat/ \
    24 \
    18s &>> data/runlog.Project_AW_18s_GBHabitat.out

## Project_101819AW18s 1840657.pts-405.ron
code/qiime2_taxonomy.sh  \
    Project_101819AW18s \
    data/greatbay \
    /home/unhAW/jtmiller/watts/raw-data/raw-data_copied_from_DT/Project_101819AW18s/ \
    24 \
    18s &>> data/runlog.Project_101819AW18s.out


code/qiime2_taxonomy.sh  \
    Project_112719AW18sNX \
    data/greatbay \
    /home/unhAW/jtmiller/watts/raw-data/raw-data_copied_from_DT/Project_112719AW18sNX/ \
    24 \
    18s &>> data/runlogs/runlog.Project_112719AW18sNX.out



code/qiime2_taxonomy.sh  \
    16Mer060122_AW_MFTS \
    data/test_samples \
    raw-data/cobb.sr.unh.edu/managed/220601_A01346_0062_BHY2MKDRXY_16Mer060122_AW_MFTS/reads \
    24 \
    mifish &> data/runlogs/runlog.16Mer060122_AW_MFTS.out

code/qiime2_taxonomy.sh  \
    16Mer060122_AW_MFNX \
    data/test_samples \
    raw-data/cobb.sr.unh.edu/managed/220601_A01346_0062_BHY2MKDRXY_16Mer060122_AW_MFNX/reads \
    36 \
    mifish &> data/runlogs/runlog.16Mer060122_AW_MFNX.out

code/qiime2_taxonomy.sh  \
    16Mer061722_AW_HDAR-ss2 \
    data/test_samples \
    raw-data/cobb.sr.unh.edu/managed/220617_A01346_0065_AHFHV7DRX2_16Mer061722_AW_HDAR-ss2/reads \
    36 \
    mifish &> data/runlogs/runlog.16Mer061722_AW_HDAR-ss2.out

code/qiime2_taxonomy.sh \
    16Mer061422_AW_HDAR-ss1 \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220614_A01346_0064_BHFHC7DRX2_16Mer061422_AW_HDAR-ss1/reads \
    36 \
    mifish &> data/runlogs/runlog.16Mer061422_AW_HDAR-ss1.out


code/qiime2_taxonomy.sh  \
    16Mer062422_AW_HDAR-ss3 \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220624_A01346_0066_BHFHLHDRX2_16Mer062422_AW_HDAR-ss3/reads \
    36 \
    mifish &> data/runlogs/runlog.16Mer062422_AW_HDAR-ss3.out

## https://cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_HIDARss4MF/reads
code/qiime2_taxonomy.sh  \
    HIDARss4MF \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_HIDARss4MF/reads \
    16 \
    mifish &>> data/runlogs/runlog.HIDARss4MF.out

## wget -r -np -R "index.html*" --http-user=user --http-password=yoYthiWYef https://cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_HIDARss118s/reads
code/qiime2_taxonomy.sh  \
    HIDARss118s \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_HIDARss118s/reads \
    16 \
    18s &>> data/runlogs/runlog.HIDARss118sout



#wget -r -np -R "index.html*" --http-user=user --http-password=ogrkLXlOfG https://cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_Aliya-MF-1/reads &
code/qiime2_taxonomy.sh  \
    Aliya-MF-1 \
    data/Aliya \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_Aliya-MF-1/reads \
    24 \
    mitohelper &> data/runlogs/runlog.Aliya-MF-1

## wget -r -np -R "index.html*" --http-user=user --http-password=itnGvRDcYI https://cobb.sr.unh.edu/managed/220803_A01346_0074_BHGF2VDRX2_16Mer080322_AW_HIDARFC-MF/reads
code/qiime2_taxonomy.sh  \
    HIDARFC-MF \
    data/hawaii \
    /home/unhAW/jtmiller/watts/raw-data/cobb.sr.unh.edu/managed/220803_A01346_0074_BHGF2VDRX2_16Mer080322_AW_HIDARFC-MF \
    24 \
    mitohelper &>> data/runlogs/runlog.HIDARFC-MF







### NERRS
### without besthit

## wget -r -np -R "index.html*" --http-user=user --http-password=nMABlqpIgV https://cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_NERR-ANERR-MF-1/reads
code/qiime2_taxonomy.sh  \
    NERR-ANERR-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_NERR-ANERR-MF-1/reads \
    12 \
    mitohelper &>> data/runlogs/runlog.ANERR-MF-1 &
    

#wget -r -np -R "index.html*" --http-user=user --http-password=FNqsAMdvRw https://cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_NERR-GTM-MF-1/reads &
code/qiime2_taxonomy.sh  \
    NERR-GTM-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_NERR-GTM-MF-1/reads \
    12 \
    mitohelper &>> data/runlogs/runlog.NERR-GTM-MF-1 &


#wget -r -np -R "index.html*" --http-user=user --http-password=EKQAtNAVEF https://cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_NERR-JC-MF-1/reads &
code/qiime2_taxonomy.sh  \
    NERR-JC-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_NERR-JC-MF-1/reads \
    12 \
    mitohelper &>> data/runlogs/runlog.NERR-JC-MF-1 &


code/qiime2_taxonomy.sh  \
    NERRPB-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220722_A01346_0072_AHGCWGDRX2_16Mer072222_AW_NERRPB-MF/reads \
    12 \
    mitohelper &> data/runlogs/runlog.NERRPB-MF &



code/qiime2_taxonomy.sh \
  NERRMA-MF-1 \
  data/NERR \
  raw-data/cobb.sr.unh.edu/managed/220722_A01346_0072_AHGCWGDRX2_16Mer072222_AW_NERRMA-MF/reads \
  12 \
 mitohelper &> data/runlogs/runlog.NERRMA-MF-1 &

   code/qiime2_taxonomy.sh  \
    NERRSS-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220722_A01346_0072_AHGCWGDRX2_16Mer072222_AW_NERRSS-MF/reads \
    12 \
    mitohelper &> data/runlogs/runlog.NERRSS-MF-1 &


code/qiime2_taxonomy.sh  \
     NERRSF-MF-1 \
     data/NERR \
     raw-data/cobb.sr.unh.edu/managed/220722_A01346_0072_AHGCWGDRX2_16Mer072222_AW_NERRSF-MF/reads \
     12 \
     mitohelper &> data/runlogs/runlog.NERRSF-MF &



code/qiime2_taxonomy.sh  \
    NERRHE-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220722_A01346_0072_AHGCWGDRX2_16Mer072222_AW_NERRHE-MF/reads \
    12 \
    mitohelper &> data/runlogs/runlog.NERRHE-MF-1 &



code/qiime2_taxonomy.sh  \
    NERRGB-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220803_A01346_0074_BHGF2VDRX2_16Mer080322_AW_NERRGB-MF/reads \
    12 \
    mitohelper &> data/runlogs/runlog.NERRHE-MF-1 &


#wget -r -np -R "index.html*" --http-user=user --http-password=MtaQCiopnq https://cobb.sr.unh.edu/managed/220803_A01346_0074_BHGF2VDRX2_16Mer080322_AW_NERRWE-MF/reads
code/qiime2_taxonomy.sh  \
    NERRWE-MF-1 \
    data/NERR \
    /home/unhAW/jtmiller/watts/raw-data/cobb.sr.unh.edu/managed/220803_A01346_0074_BHGF2VDRX2_16Mer080322_AW_NERRWE-MF \
    12 \
    mitohelper &>> data/runlogs/runlog.NERRWE-MF-1 &




### NERRS
### with besthit
code/qiime2_taxonomy_besthit.sh  \
    NERR-ANERR-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_NERR-ANERR-MF-1/reads \
    12 \
    mitohelper &>> data/runlogs/runlog.ANERR-MF-1 &
    
code/qiime2_taxonomy_besthit.sh  \
    NERR-GTM-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_NERR-GTM-MF-1/reads \
    12 \
    mitohelper &>> data/runlogs/runlog.NERR-GTM-MF-1 &

code/qiime2_taxonomy_besthit.sh  \
    NERR-JC-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_NERR-JC-MF-1/reads \
    12 \
    mitohelper &>> data/runlogs/runlog.NERR-JC-MF-1 &

code/qiime2_taxonomy_besthit.sh  \
    NERRPB-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220722_A01346_0072_AHGCWGDRX2_16Mer072222_AW_NERRPB-MF/reads \
    12 \
    mitohelper &> data/runlogs/runlog.NERRPB-MF &

code/qiime2_taxonomy_besthit.sh \
    NERRMA-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220722_A01346_0072_AHGCWGDRX2_16Mer072222_AW_NERRMA-MF/reads \
    12 \
    mitohelper &> data/runlogs/runlog.NERRMA-MF-1 &

code/qiime2_taxonomy_besthit.sh  \
    NERRSS-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220722_A01346_0072_AHGCWGDRX2_16Mer072222_AW_NERRSS-MF/reads \
    12 \
    mitohelper &> data/runlogs/runlog.NERRSS-MF-1 &

code/qiime2_taxonomy_besthit.sh  \
    NERRSF-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220722_A01346_0072_AHGCWGDRX2_16Mer072222_AW_NERRSF-MF/reads \
    12 \
    mitohelper &> data/runlogs/runlog.NERRSF-MF &

code/qiime2_taxonomy_besthit.sh  \
    NERRHE-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220722_A01346_0072_AHGCWGDRX2_16Mer072222_AW_NERRHE-MF/reads \
    12 \
    mitohelper &> data/runlogs/runlog.NERRHE-MF-1 &

code/qiime2_taxonomy_besthit.sh  \
    NERRGB-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220803_A01346_0074_BHGF2VDRX2_16Mer080322_AW_NERRGB-MF/reads \
    12 \
    mitohelper &> data/runlogs/runlog.NERRHE-MF-1 &

code/qiime2_taxonomy_besthit.sh  \
    NERRWE-MF-1 \
    data/NERR \
    /home/unhAW/jtmiller/watts/raw-data/cobb.sr.unh.edu/managed/220803_A01346_0074_BHGF2VDRX2_16Mer080322_AW_NERRWE-MF \
    12 \
    mitohelper &>> data/runlogs/runlog.NERRWE-MF-1 &



code/qiime2_taxonomy_besthit.sh  \
    NERRHE-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220722_A01346_0072_AHGCWGDRX2_16Mer072222_AW_NERRHE-MF/reads \
    12 \
    mitohelper &> data/runlogs/runlog.NERRHE-MF-1 &












code/qiime2_taxonomy_besthit.sh  \
    HIDARFC-MF \
    data/hawaii \
    /home/unhAW/jtmiller/watts/raw-data/cobb.sr.unh.edu/managed/220803_A01346_0074_BHGF2VDRX2_16Mer080322_AW_HIDARFC-MF \
    24 \
    mitohelper &> data/runlogs/runlog.HIDARFC-MF && \
code/qiime2_taxonomy.sh  \
    HIDARFC-MF \
    data/hawaii \
    /home/unhAW/jtmiller/watts/raw-data/cobb.sr.unh.edu/managed/220803_A01346_0074_BHGF2VDRX2_16Mer080322_AW_HIDARFC-MF \
    24 \
    mitohelper &>> data/runlogs/runlog.HIDARFC-MF 

code/qiime2_taxonomy.sh  \
    HIDARFC-MF \
    data/hawaii \
    /home/unhAW/jtmiller/watts/raw-data/cobb.sr.unh.edu/managed/220803_A01346_0074_BHGF2VDRX2_16Mer080322_AW_HIDARFC-MF \
    24 \
    mitohelper &>> data/runlogs/runlog.HIDARFC-MF




## HDAR
# wget -r -np -R "index.html*" --http-user=user --http-password=Eaewipkokn https://cobb.sr.unh.edu/managed/220822_A01346_0076_AH5KV5DRX2_16Mer082222_AW_HIDAR_P1_18s/reads

code/qiime2_taxonomy.sh  \
    HIDAR_P1_18s \
    data/hawaii \
    /home/unhAW/jtmiller/watts/raw-data/cobb.sr.unh.edu/managed/220822_A01346_0076_AH5KV5DRX2_16Mer082222_AW_HIDAR_P1_18s/reads \
    24 \
    18s &>> data/runlogs/runlog.HIDAR_P1_18s



## wget -r -np -R "index.html*" --http-user=user --http-password=tpchGDNGMS https://cobb.sr.unh.edu/managed/220822_A01346_0076_AH5KV5DRX2_16Mer082222_AW_HIDAR_P2_18s/reads
code/qiime2_taxonomy.sh  \
    HIDAR_P2_18s \
    data/hawaii \
    /home/unhAW/jtmiller/watts/raw-data/cobb.sr.unh.edu/managed/220822_A01346_0076_AH5KV5DRX2_16Mer082222_AW_HIDAR_P2_18s/reads \
    24 \
    18s &>> data/runlogs/runlog.HIDAR_P2_18s


## Re-run mifish taxonomy for HIDAR

code/qiime2_taxonomy.sh  \
    HIDARss2MF \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220617_A01346_0065_AHFHV7DRX2_16Mer061722_AW_HDAR-ss2/reads \
    24 \
    mitohelper &>> data/runlogs/runlog.16Mer061722_AW_HDAR-ss2.out

code/qiime2_taxonomy.sh  \
    HIDARss1MF \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220614_A01346_0064_BHFHC7DRX2_16Mer061422_AW_HDAR-ss1/reads \
    24 \
    mitohelper &>> data/runlogs/runlog.16Mer061422_AW_HDAR-ss1.out


code/qiime2_taxonomy.sh  \
    HIDARss4MF \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_HIDARss4MF/reads \
    24 \
    mitohelper &>> data/runlogs/runlog.HIDARss4MF.out

code/qiime2_taxonomy.sh  \
    HIDARss3MF \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220624_A01346_0066_BHFHLHDRX2_16Mer062422_AW_HDAR-ss3/reads \
    24 \
    mitohelper &>> data/runlogs/runlog.16Mer062422_AW_HDAR-ss3.out


### Besthit run
code/qiime2_taxonomy_besthit.sh  \
    HIDARss2MF \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220617_A01346_0065_AHFHV7DRX2_16Mer061722_AW_HDAR-ss2/reads \
    24 \
    mitohelper &>> data/runlogs/runlog.16Mer061722_AW_HDAR-ss2.out

code/qiime2_taxonomy_besthit.sh  \
    HIDARss1MF \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220614_A01346_0064_BHFHC7DRX2_16Mer061422_AW_HDAR-ss1/reads \
    24 \
    mitohelper &>> data/runlogs/runlog.16Mer061422_AW_HDAR-ss1.out

code/qiime2_taxonomy_besthit.sh  \
    HIDARss4MF \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_HIDARss4MF/reads \
    24 \
    mitohelper &>> data/runlogs/runlog.HIDARss4MF.out

code/qiime2_taxonomy_besthit.sh  \
    HIDARss3MF \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220624_A01346_0066_BHFHLHDRX2_16Mer062422_AW_HDAR-ss3/reads \
    24 \
    mitohelper &>> data/runlogs/runlog.16Mer062422_AW_HDAR-ss3.out




raw-data/cobb.sr.unh.edu/managed/220614_A01346_0064_BHFHC7DRX2_16Mer061422_AW_HDAR-ss1/reads
raw-data/cobb.sr.unh.edu/managed/220624_A01346_0066_BHFHLHDRX2_16Mer062422_AW_HDAR-ss3/reads






code/qiime2_taxonomy.sh  \
    HIDARHE-MF \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220829_A01346_0077_BH5H2KDRX2_16Mer082922_AW_HIDARHE-MF/reads \
    24 \
    mitohelper &>> data/runlogs/runlog.HIDARHE-MF.out


code/qiime2_taxonomy.sh  \
    HIDAR_P3_18s \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220829_A01346_0077_BH5H2KDRX2_16Mer082922_AW_HIDAR_P3_18s/reads \
    24 \
    18s &>> data/runlogs/runlog.HIDAR_P3_18s.out




code/qiime2_taxonomy_besthit.sh  \
    HIDARHE-MF \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220829_A01346_0077_BH5H2KDRX2_16Mer082922_AW_HIDARHE-MF/reads \
    24 \
    mitohelper &>> data/runlogs/runlog.HIDARHE-MF.out


code/qiime2_taxonomy_besthit.sh  \
    HIDAR_P3_18s \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220829_A01346_0077_BH5H2KDRX2_16Mer082922_AW_HIDAR_P3_18s/reads \
    24 \
    18s &>> data/runlogs/runlog.HIDAR_P3_18s.out


######## NERRS
   code/qiime2_taxonomy.sh  \
    NERRAB-MF-2 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220829_A01346_0077_BH5H2KDRX2_16Mer082922_AW_NERRAB-MF/reads \
    32 \
    mitohelper &>> data/runlogs/runlog.NERRAB-MF-2.out

   code/qiime2_taxonomy.sh  \
    NERRGB-MF-2 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220829_A01346_0077_BH5H2KDRX2_16Mer082922_AW_NERRGB-MF/reads \
    32 \
    mitohelper &>> data/runlogs/runlog.NERRGB-MF-2.out

## Lakes
   code/qiime2_taxonomy.sh  \
    LAKES-KLY \
    data/Lakes \
    raw-data/cobb.sr.unh.edu/managed/220829_A01346_0077_BH5H2KDRX2_16Mer082922_AW_LAKES-KLY/reads \
    32 \
    klymus &>> data/runlogs/runlog.LAKES-KLY.out


######## NERRS bsthit
   code/qiime2_taxonomy_besthit.sh  \
    NERRAB-MF-2 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220829_A01346_0077_BH5H2KDRX2_16Mer082922_AW_NERRAB-MF/reads \
    32 \
    mitohelper &>> data/runlogs/runlog.NERRAB-MF-2.out

   code/qiime2_taxonomy_besthit.sh  \
    NERRGB-MF-2 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220829_A01346_0077_BH5H2KDRX2_16Mer082922_AW_NERRGB-MF/reads \
    32 \
    mitohelper &>> data/runlogs/runlog.NERRGB-MF-2.out

## Lakes
   code/qiime2_taxonomy_besthit.sh  \
    LAKES-KLY \
    data/Lakes \
    raw-data/cobb.sr.unh.edu/managed/220829_A01346_0077_BH5H2KDRX2_16Mer082922_AW_LAKES-KLY/reads \
    32 \
    klymus &>> data/runlogs/runlog.LAKES-KLY.out


## DAR
code/qiime2_taxonomy.sh  \
    HIDARFC-MF-2 \
    data/hawaii  \
    raw-data/cobb.sr.unh.edu/managed/220829_A01346_0077_BH5H2KDRX2_16Mer082922_AW_HIDARFC-MF/reads \
    48 \
    mitohelper &>> data/runlogs/runlog.HIDARFC-MF-2.out

code/qiime2_taxonomy_besthit.sh  \
    HIDARFC-MF-2 \
    data/hawaii  \
    raw-data/cobb.sr.unh.edu/managed/220829_A01346_0077_BH5H2KDRX2_16Mer082922_AW_HIDARFC-MF/reads \
    48 \
    mitohelper &>> data/runlogs/runlog.HIDARFC-MF-2.out



## DAR 18s re-run
code/qiime2_taxonomy.sh  \
    HIDARss118s \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_HIDARss118s/reads \
    4 \
    18s &>> data/runlogs/runlog.HIDARss118sout

code/qiime2_taxonomy_besthit.sh  \
    HIDARss118s \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_HIDARss118s/reads \
    4 \
    18s &>> data/runlogs/runlog.HIDARss118sout



code/qiime2_taxonomy.sh  \
    NERRPB-MF-2 \
    data/NEER \
    raw-data/cobb.sr.unh.edu/managed/220912_A01346_0078_AH5GYNDRX2_16Mer091222_AW_NERRSPB-MFNX083122/reads \
    24 \
   mitohelper &>> data/runlogs/runlog.NERRPB-MF-2

code/qiime2_taxonomy_besthit.sh  \
    NERRPB-MF-2 \
    data/NEER \
    raw-data/cobb.sr.unh.edu/managed/220912_A01346_0078_AH5GYNDRX2_16Mer091222_AW_NERRSPB-MFNX083122/reads \
    24 \
   mitohelper &>> data/runlogs/runlog.NERRPB-MF-2






## done
code/qiime2_taxonomy.sh  \
    NERRGTM-MF-2 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220923_A01346_0079_BH3LWFDRX2_16Mer092322-AW-NERRGTM-MFNX091622/reads \
    24 \
   mitohelper &>> data/runlogs/runlog.NERRGTM-MF-2
## done
code/qiime2_taxonomy_besthit.sh  \
    NERRGTM-MF-2 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220923_A01346_0079_BH3LWFDRX2_16Mer092322-AW-NERRGTM-MFNX091622/reads \
    24 \
   mitohelper &>> data/runlogs/runlog.NERRGTM-MF-2


## 
code/qiime2_taxonomy.sh  \
    NERRSS-MF-2 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220923_A01346_0079_BH3LWFDRX2_16Mer092322-AW-NERRMASS-MFNX091222/reads \
    24 \
   mitohelper &>> data/runlogs/runlog.NERRSS-MF-2

code/qiime2_taxonomy_besthit.sh  \
    NERRSS-MF-2 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220923_A01346_0079_BH3LWFDRX2_16Mer092322-AW-NERRMASS-MFNX091222/reads \
    24 \
   mitohelper &>> data/runlogs/runlog.NERRSS-MF-2


code/qiime2_taxonomy.sh  \
    NERRWE-MF-2 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220923_A01346_0079_BH3LWFDRX2_16Mer092322-AW-NERRWE-MFNX091222/reads \
    24 \
   mitohelper &>> data/runlogs/runlog.NERRWE-MF-2

code/qiime2_taxonomy_besthit.sh  \
    NERRWE-MF-2 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220923_A01346_0079_BH3LWFDRX2_16Mer092322-AW-NERRWE-MFNX091222/reads \
    24 \
   mitohelper &>> data/runlogs/runlog.NERRWE-MF-2







### NERRWE
code/qiime2_taxonomy.sh  \
    NERRWE-MF-2 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220923_A01346_0079_BH3LWFDRX2_16Mer092322-AW-NERRWE-MFNX091222/reads \
    24 \
   mitohelper &>> data/runlogs/runlog.NERRWE-MF-2

code/qiime2_taxonomy_besthit.sh  \
    NERRWE-MF-2 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220923_A01346_0079_BH3LWFDRX2_16Mer092322-AW-NERRWE-MFNX091222/reads \
    24 \
   mitohelper &>> data/runlogs/runlog.NERRWE-MF-2






### NERRSF-MF-2
code/qiime2_taxonomy.sh  \
    NERRSF-MF-2 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/221014_A01346_0082_AH3LY5DRX2_16Mer101222_AW_NERRSF-MFNX091922/reads \
    24 \
   mitohelper &>> data/runlogs/runlog.NERRSF-MF-2

code/qiime2_taxonomy_besthit.sh  \
    NERRSF-MF-2 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/221014_A01346_0082_AH3LY5DRX2_16Mer101222_AW_NERRSF-MFNX091922/reads \
    24 \
   mitohelper &>> data/runlogs/runlog.NERRSF-MF-2






##wget -r -np -R "index.html*" --http-user=user --http-password=qGFBgXtDqg https://cobb.sr.unh.edu/managed/221110_A01346_0085_AH5HLVDRX2_16Mer111022_MKJM_GEN-725-825-MiFish/reads
code/qiime2_taxonomy.sh  \
    MillPond-MF-1 \
    data/GEN725 \
    raw-data/cobb.sr.unh.edu/managed/221110_A01346_0085_AH5HLVDRX2_16Mer111022_MKJM_GEN-725-825-MiFish/reads \
    24 \
    mitohelper &>> data/runlogs/runlog.MillPond-MF-1

code/qiime2_taxonomy_besthit.sh  \
    MillPond-MF-1 \
    data/GEN725 \
    raw-data/cobb.sr.unh.edu/managed/221110_A01346_0085_AH5HLVDRX2_16Mer111022_MKJM_GEN-725-825-MiFish/reads \
    24 \
    mitohelper &>> data/runlogs/runlog.MillPond-MF-1



#wget -r -np -R "index.html*" --http-user=user --http-password=iYBsHVaocc https://cobb.sr.unh.edu/managed/221026_A01346_0084_BH3LMNDRX2_16Mer102622_CaldwellFurey-Fish-eDNA/reads
code/qiime2_taxonomy.sh  \
    CaldwellFurey-Fish-eDNA \
    data/Aliya \
    raw-data/cobb.sr.unh.edu/managed/221026_A01346_0084_BH3LMNDRX2_16Mer102622_CaldwellFurey-Fish-eDNA/reads \
    24 \
    mitohelper &>> data/runlogs/runlog.CaldwellFurey-Fish-eDNA

#wget -r -np -R "index.html*" --http-user=user --http-password=iYBsHVaocc https://cobb.sr.unh.edu/managed/221026_A01346_0084_BH3LMNDRX2_16Mer102622_CaldwellFurey-Fish-eDNA/reads
code/qiime2_taxonomy_besthit.sh  \
    CaldwellFurey-Fish-eDNA \
    data/Aliya \
    raw-data/cobb.sr.unh.edu/managed/221026_A01346_0084_BH3LMNDRX2_16Mer102622_CaldwellFurey-Fish-eDNA/reads \
    24 \
    mitohelper &>> data/runlogs/runlog.CaldwellFurey-Fish-eDNA

code/qiime2_taxonomy.sh  \
    AC-MFtest \
    data/Aliya \
    raw-data/cobb.sr.unh.edu/managed/230113_A01346_0092_BHGVLKDRX2_16Mer011323-AC-MFtest/reads \
    24 \
    mitohelper &>> data/runlogs/runlog.AC-MFtest

code/qiime2_taxonomy_besthit.sh  \
    AC-MFtest \
    data/Aliya \
    raw-data/cobb.sr.unh.edu/managed/230113_A01346_0092_BHGVLKDRX2_16Mer011323-AC-MFtest/reads \
    24 \
    mitohelper &>> data/runlogs/runlog.AC-MFtest


code/qiime2_taxonomy.sh  \
    CaldwellFurey2-MF \
    data/Aliya \
    raw-data/cobb.sr.unh.edu/managed/230203_A01346_0097_AHKTJGDRX2_16Mer020323-CaldwellFurey2-Fish-eDNA/reads \
    24 \
    mitohelper &>> data/runlogs/runlog.CaldwellFurey2-MF


#wget -r -np -R "index.html*" --http-user=user --http-password=uAbLeuESGk https://cobb.sr.unh.edu/managed/230127_A01346_0094_BHHHKFDRX2_16Mer012723B_AW_NERRAB-MFNX011723/reads
code/qiime2_taxonomy.sh  \
    NERRAB-MFNX011723 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/230127_A01346_0094_BHHHKFDRX2_16Mer012723B_AW_NERRAB-MFNX011723/reads \
    24 \
    mitohelper &>> data/runlogs/runlog.NERRAB-MFNX011723

code/qiime2_taxonomy_besthit.sh  \
    NERRAB-MFNX011723 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/230127_A01346_0094_BHHHKFDRX2_16Mer012723B_AW_NERRAB-MFNX011723/reads \
    24 \
    mitohelper &>> data/runlogs/runlog.NERRAB-MFNX011723


code/qiime2_taxonomy.sh  \
    NERRAB-MFNXSt020123 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/230210_A01346_0099_BHKVYGDRX2_16Mer021023_AW_NERRAB-MFNXSt020123/reads \
    24 \
    mitohelper \
     &>> data/runlogs/runlog.NERRAB-MFNXSt020123

code/qiime2_taxonomy_besthit.sh  \
    NERRAB-MFNXSt020123 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/230210_A01346_0099_BHKVYGDRX2_16Mer021023_AW_NERRAB-MFNXSt020123/reads \
    24 \
    mitohelper \
     &>> data/runlogs/runlog.NERRAB-MFNXSt020123



code/qiime2_taxonomy.sh    \
    NERRAB-MFNX013023 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/230210_A01346_0099_BHKVYGDRX2_16Mer021023_AW_NERRAB-MFNX013023/reads \
    24 \
    mitohelper
    &>> data/runlogs/runlog.NERRAB-MFNX013023

 code/qiime2_taxonomy_besthit.sh  \
    NERRAB-MFNX013023 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/230210_A01346_0099_BHKVYGDRX2_16Mer021023_AW_NERRAB-MFNX013023/reads \
    24 \
    mitohelper
    &>> data/runlogs/runlog.NERRAB-MFNX013023

 code/qiime2_taxonomy_besthit.sh  \
    CaldwellFurey2-MF \
    data/Aliya \
    raw-data/cobb.sr.unh.edu/managed/230203_A01346_0097_AHKTJGDRX2_16Mer020323-CaldwellFurey2-Fish-eDNA/reads \
    24 \
    mitohelper &>> data/runlogs/runlog.CaldwellFurey2-MF


## 220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_2021WRMF
code/qiime2_taxonomy.sh \
    2021WRMF \
    data/wells \
    raw-data/cobb.sr.unh.edu/managed/220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_2021WRMF/reads \
    24 \
    mitohelper &> data/runlogs/runlog.16Mer022822_AW_2021WRMF


 code/qiime2_taxonomy_besthit.sh  \
    2021WRMF \
    data/wells \
    raw-data/cobb.sr.unh.edu/managed/220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_2021WRMF/reads \
    24 \
    mitohelper &> data/runlogs/runlog.16Mer022822_AW_2021WRMF

## 220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_2021WRMF
code/qiime2_taxonomy_besthit.sh \
    16Mer022822_AW_2021WRMF \
    data/wells \
    raw-data/cobb.sr.unh.edu/managed/220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_2021WRMF/reads \
    12 \
    mifish &> data/runlogs/runlog.16Mer022822_AW_2021WRMF




#wget -r -np -R "index.html*" --http-user=user --http-password=lFKugcRbxd https://cobb.sr.unh.edu/managed/230221_A01346_0100_BH5JTNDRX2_16Mer022123-AW-NERRSSGB-CO1NX013123/reads
code/qiime2_taxonomy.sh \
    NERRSSGB-CO1NX013123 \
    data/NERR \
    cobb.sr.unh.edu/managed/230221_A01346_0100_BH5JTNDRX2_16Mer022123-AW-NERRSSGB-CO1NX013123/reads \
    24 \
    leray_co1 &> data/runlogs/runlog.NERRSSGB-CO1NX013123

#wget -r -np -R "index.html*" --http-user=user --http-password=lFKugcRbxd https://cobb.sr.unh.edu/managed/230221_A01346_0100_BH5JTNDRX2_16Mer022123-AW-NERRSSGB-CO1NX013123/reads
 code/qiime2_taxonomy_besthit.sh \
    NERRSSGB-CO1NX013123 \
    data/NERR \
    cobb.sr.unh.edu/managed/230221_A01346_0100_BH5JTNDRX2_16Mer022123-AW-NERRSSGB-CO1NX013123/reads \
    24 \
    leray_co1 &>> data/runlogs/runlog.NERRSSGB-CO1NX013123





#wget -r -np -R "index.html*" --http-user=user --http-password=ogrkLXlOfG https://cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_Aliya-MF-1/reads &
code/qiime2_taxonomy.sh  \
    Aliya-MF-1 \
    data/Aliya \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_Aliya-MF-1/reads \
    24 \
    mitohelper &>> data/runlogs/runlog.Aliya-MF-1

#wget -r -np -R "index.html*" --http-user=user --http-password=ogrkLXlOfG https://cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_Aliya-MF-1/reads &
 code/qiime2_taxonomy_besthit.sh  \
    Aliya-MF-1 \
    data/Aliya \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_Aliya-MF-1/reads \
    24 \
    mitohelper &>> data/runlogs/runlog.Aliya-MF-1



#wget -r -np -R "index.html*" --http-user=user --http-password=ogrkLXlOfG https://cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_Aliya-MF-1/reads &
code/qiime2_taxonomy.sh  \
    Aliya-MF-1 \
    data/Aliya \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_Aliya-MF-1/reads \
    24 \
    mitohelper &>> data/runlogs/runlog.Aliya-MF-1

#wget -r -np -R "index.html*" --http-user=user --http-password=ogrkLXlOfG https://cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_Aliya-MF-1/reads &
 code/qiime2_taxonomy_besthit.sh  \
    Aliya-MF-1 \
    data/Aliya \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_Aliya-MF-1/reads \
    24 \
    mitohelper &>> data/runlogs/runlog.Aliya-MF-1



code/qiime2_taxonomy.sh  \
    AC-MFtest \
    data/Aliya \
    raw-data/cobb.sr.unh.edu/managed/230113_A01346_0092_BHGVLKDRX2_16Mer011323-AC-MFtest/reads \
    24 \
    mitohelper &>> data/runlogs/runlog.AC-MFtest

code/qiime2_taxonomy_besthit.sh  \
    AC-MFtest \
    data/Aliya \
    raw-data/cobb.sr.unh.edu/managed/230113_A01346_0092_BHGVLKDRX2_16Mer011323-AC-MFtest/reads \
    24 \
    mitohelper &>> data/runlogs/runlog.AC-MFtest



## ~/watts/raw-data/raw-data_copied_from_DT/Maine_algae_2019/reads/
code/qiime2_taxonomy.sh  \
    Maine_algae_2019 \
    data/algae \
    ~/watts/raw-data/raw-data_copied_from_DT/Maine_algae_2019/reads \
    24 \
    18s &>> data/runlogs/runlog.Maine_algae_2019

## ~/watts/raw-data/raw-data_copied_from_DT/Maine_algae_2019/reads/
code/qiime2_taxonomy_besthit.sh  \
    Maine_algae_2019 \
    data/algae \
    ~/watts/raw-data/raw-data_copied_from_DT/Maine_algae_2019/reads \
    24 \
    18s &>> data/runlogs/runlog.Maine_algae_2019


## 250-41 (primer length) = 209 (but 140-175)
zgrep -e "GTACACACCGCCCGTC.*GTAGGTGAACCTGCAGAAGGATCA" S1024_S1_L001_R1_001.fastq.gz | less -S

zgrep -e "GTACACACCGCCCGTC.*GTAGGTGAACCTGCAGAAGGATCA" Mears_S21_L001_R1_001.fastq.gz