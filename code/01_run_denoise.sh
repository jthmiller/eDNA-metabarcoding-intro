#!/bin/bash

## intitalize run folder, import qiime2 data and 
## ex: 

code/qiime2_init.sh \
    16Mer020722_AW_Klym \
    data/greatbay	\
    /home/unhAW/jtmiller/watts/raw-data/cobb.sr.unh.edu/managed/220207_A01346_0046_AHFM75DRXY_16Mer020722_AW_Klym/reads \
    16 \
    klymus &> data/runlog.16Mer020722_AW_Klym.out

## running
code/qiime2_init.sh \
    16MerAW_AquaCulMF_062521 \
    data/greatbay \
    raw-data/cobb.sr.unh.edu/managed/210625_A01346_0021_BHFLJ2DRXY_16MerAW_AquaCulMF_062521/reads \
    16 \
    mifish &> data/runlog.16MerAW_AquaCulMF_062521.out

## running
code/qiime2_init.sh \
    16Mer020722_AW_LakesMF \
    data/invasive \
    raw-data/cobb.sr.unh.edu/managed/220207_A01346_0046_AHFM75DRXY_16Mer020722_AW_LakesMF/reads \
    8 \
    mifish &> data/runlog.16Mer020722_AW_LakesMF.out

## 16Mer073021 algae (was this not actually klymus? and not actually algae? might be mifish)
code/qiime2_init.sh \
    16Mer073021 \
    data/algae	\
    raw-data/raw-data_copied_from_DT/16Mer073021_AW_OYS7/reads \
    8 \
    klymus &> data/runlog.16Mer073021.out

## 16Mer020722_AW_Klym algae 
code/qiime2_init.sh \
    16Mer020722_AW_Klym \
    data/algae	\
    raw-data/cobb.sr.unh.edu/managed/220207_A01346_0046_AHFM75DRXY_16Mer020722_AW_Klym/reads \
    12 \
    klymus &> data/runlog.16Mer020722.out



### Create a new file with the wget command from the genome center
### Name the file that should be used for the results destination dir ( ex: cobb.sr.unh.edu/managed/220207_A01346_0046_AHFM75DRXY_16Mer020722_AW_MaineMF as invasive_16Mer020722_AW_MaineMF )  

#one='16Mer020722_AW_MaineMF.sh'
#run=${one%.sh}
#echo $run 

## Testing
#two='/home/unhAW/jtmiller/watts/data/invasive'
#dest_dir="$( realpath $two )"
#echo $dest_dir
#three='cobb.sr.unh.edu/managed/220207_A01346_0046_AHFM75DRXY_16Mer020722_AW_MaineMF/reads'
#readpath=$( realpath ${3} )
#echo $readpath


## changed init_run to qimme2_denoise.sh
## code/qiime2_denoise.sh

## 211112_A01346_0037_AHFM2GDRXY_16Mer102621_AW_GBSW_18s
## 16Mer102621_AW_GBSW_18s algae 
code/qiime2_denoise.sh \
    16Mer102621_AW_GBSW_18s \
    data/greatbay	\
    raw-data/cobb.sr.unh.edu/managed/211112_A01346_0037_AHFM2GDRXY_16Mer102621_AW_GBSW_18s/reads \
    12 \
    18s &> data/greatbay/runlog.16Mer102621.out

code/qiime2_denoise.sh \
    16Mer102621_AW_GBSW_MF \
    data/greatbay	\
    raw-data/cobb.sr.unh.edu/managed/211112_A01346_0037_AHFM2GDRXY_16Mer102621_AW_GBSW_MF/reads \
    12 \
    mifish &> data/greatbay/runlog.16Mer102621.out



## 210625_A01346_0021_BHFLJ2DRXY_16MerAW_AquaCu18s_062521
code/qiime2_denoise.sh \
    16MerAW_AquaCu18s_062521 \
    data/greatbay	\
    raw-data/cobb.sr.unh.edu/managed/210625_A01346_0021_BHFLJ2DRXY_16MerAW_AquaCu18s_062521/reads \
    12 \
    18s &> data/runlogs/runlog.16MerAW_AquaCu18s_062521


## 210927_A01346_0031_BHFLLFDRXY_16Mer100121_AW_SC18s

code/qiime2_denoise.sh \
    16Mer100121_AW_SC18s \
    data/greatbay	\
    raw-data/cobb.sr.unh.edu/managed/210927_A01346_0031_BHFLLFDRXY_16Mer100121_AW_SC18s/reads \
    3 \
    18s &> data/runlogs/runlog.16Mer100121_AW_SC18s


## 210927_A01346_0031_BHFLLFDRXY_16Mer100121_AW_SC16s
code/qiime2_denoise.sh \
    16Mer100121_AW_SC16s \
    data/greatbay	\
    raw-data/cobb.sr.unh.edu/managed/210927_A01346_0031_BHFLLFDRXY_16Mer100121_AW_SC16s/reads \
    4 \
    16s &> data/runlogs/runlog.16Mer100121_AW_SC16s


## 16Mer071621_AW_SeaFGB_18s
code/qiime2_denoise.sh \
    16Mer071621_AW_SeaFGB_18s \
    data/greatbay	\
    raw-data/raw-data_copied_from_DT/16Mer071621_AW_SeaFGB_18s \
    4 \
    18s &> data/runlogs/runlog.16Mer071621_AW_SeaFGB_18s




## March

## 220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_OR7MF
code/qiime2_denoise.sh \
    16Mer022822_AW_OR7MF \
    data/test_samples	\
    raw-data/cobb.sr.unh.edu/managed/220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_OR7MF/reads \
    4 \
    mifish &> data/runlogs/runlog.16Mer022822_AW_OR7MF


## 220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_MV16s
code/qiime2_denoise.sh \
    16Mer022822_AW_MV16s \
    data/cyano \
    raw-data/cobb.sr.unh.edu/managed/220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_MV16s/reads \
    4 \
    16s &> data/runlogs/runlog.16Mer022822_AW_MV16s


## 220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_2021MEalg18s
code/qiime2_denoise.sh \
    16Mer022822_AW_2021MEalg18s \
    data/algae \
    raw-data/cobb.sr.unh.edu/managed/220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_2021MEalg18s/reads \
    4 \
    18s &> data/runlogs/runlog.16Mer022822_AW_2021MEalg18s

## 220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_2021WRMF
code/qiime2_denoise.sh \
    16Mer022822_AW_2021WRMF \
    data/wells \
    raw-data/cobb.sr.unh.edu/managed/220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_2021WRMF/reads \
    4 \
    mifish &> data/runlogs/runlog.16Mer022822_AW_2021WRMF


## 220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_2021WRMF
code/qiime2_denoise.sh \
    16Mer022822_AW_2021WRMF \
    data/wells \
    raw-data/cobb.sr.unh.edu/managed/220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_2021WRMF/reads \
    4 \
    mifish &> data/runlogs/runlog.16Mer022822_AW_2021WRMF


 (--p-trunc-len-f 255, --p-trunc-len-r 203)


    orbcL2	221	2.45 (0-5)	rbcL2-F	YGATGGACTTACNAGTCTTGATCGTTACAAAGG
			rbcL2-R	GNCCATAYTTRTTCAATTTATCTCTTTCAACTTGGATNCC



## 220405_A01346_0054_BHMWHNDRXY_16Mer040522_AW_LM
code/qiime2_denoise.sh \
    16Mer040522_AW_LM \
    data/test_samples \
    raw-data/cobb.sr.unh.edu/managed/220405_A01346_0054_BHMWHNDRXY_16Mer040522_AW_LM/reads \
    4 \
    mifish &> data/runlogs/runlog.16Mer040522_AW_LM


## 220418_A01346_0057_AH5JVCDRX2_16Mer041822_AW_SvKMF
code/qiime2_denoise.sh \
    16Mer041822_AW_SvKMF \
    data/test_samples \
    raw-data/cobb.sr.unh.edu/managed/220418_A01346_0057_AH5JVCDRX2_16Mer041822_AW_SvKMF/reads \
    4 \
    mifish &> data/runlogs/runlog.16Mer041822_AW_SvKM
    

code/qiime2_denoise.sh \
    16Mer042822_AW_HADAR \
    data/test_samples \
    raw-data/cobb.sr.unh.edu/managed/220428_A01346_0058_BH5JY7DRX2_16Mer042822_AW_HADAR/reads \
    4 \
    mifish &> data/runlogs/runlog.16Mer042822_AW_HADAR
    

## 16Mer073021 mifish
code/qiime2_denoise.sh  \
    16Mer073021_AW_OYS7 \
    data/test_samples \
    raw-data/raw-data_copied_from_DT/16Mer073021_AW_OYS7/reads \
    4 \
    mifish &> data/runlog.16Mer073021.out

## 220509_A01346_0059_AH5HVKDRX2_16Mer050922_AW_HDAR_MF
## 16Mer050922_AW_HDAR_MF mifish
code/qiime2_denoise.sh  \
    16Mer050922_AW_HDAR_MF \
    data/test_samples \
    raw-data/cobb.sr.unh.edu/managed/220509_A01346_0059_AH5HVKDRX2_16Mer050922_AW_HDAR_MF/reads \
    4 \
    mifish &> data/runlog.16Mer050922_AW_HDAR_MF.out


  ?  16Mer100121_AW_SC16s

## 16Mer050922_AW_HDAR_MF mifish
code/qiime2_denoise.sh  \
    16Mer121721_AW_MF \
    data/greatbay \
    raw-data/cobb.sr.unh.edu/managed/211217_A01346_0041_BHFMJJDRXY_16Mer121721_AW_MF/reads \
    4 \
    mifish &> data/runlog.16Mer121721_AW_MF.out

## 16Mer102621_AW_GBSW_MF




## 2019 GB data

## Project_112719AW18sNX 1836316.pts-405.ron
## This dataset is large- and takes a good deal of time to denoise/run
code/qiime2_denoise.sh  \
    Project_112719AW18sNX \
    data/greatbay \
    /home/unhAW/jtmiller/watts/raw-data/raw-data_copied_from_DT/Project_112719AW18sNX/ \
    12 \
    18s &> data/runlog.Project_112719AW18sNX.out

## 061720_AW_GBH18s 1837868.pts-405.ron
code/qiime2_denoise.sh  \
    061720_AW_GBH18s \
    data/greatbay \
    /home/unhAW/jtmiller/watts/raw-data/raw-data_copied_from_DT/061720_AW_GBH18s/ \
    4 \
    18s &> data/runlog.061720_AW_GBH18s.out

## Project_101819AW18s 1839406.pts-405.ron
code/qiime2_denoise.sh  \
    Project_101819AW18s \
    data/greatbay \
    /home/unhAW/jtmiller/watts/raw-data/raw-data_copied_from_DT/Project_101819AW18s/ \
    4 \
    18s &> data/runlog.Project_101819AW18s.out


## Project_AW_18s_GBHabitat 1840657.pts-405.ron
code/qiime2_denoise.sh  \
    Project_AW_18s_GBHabitat \
    data/greatbay \
    /home/unhAW/jtmiller/watts/raw-data/raw-data_copied_from_DT/Project_AW_18s_GBHabitat/ \
    4 \
    18s &> data/runlog.Project_AW_18s_GBHabitat.out




code/qiime2_denoise.sh  \
    16Mer060122_AW_MFTS \
    data/test_samples \
    raw-data/cobb.sr.unh.edu/managed/220601_A01346_0062_BHY2MKDRXY_16Mer060122_AW_MFTS/reads \
    4 \
    mifish &> data/runlogs/runlog.16Mer060122_AW_MFTS.out

code/qiime2_denoise.sh  \
    16Mer060122_AW_MFNX \
    data/test_samples \
    raw-data/cobb.sr.unh.edu/managed/220601_A01346_0062_BHY2MKDRXY_16Mer060122_AW_MFNX/reads \
    4 \
    mifish &> data/runlogs/runlog.16Mer060122_AW_MFNX.out




code/qiime2_denoise.sh  \
    16Mer061722_AW_HDAR-ss2 \
    data/test_samples \
    raw-data/cobb.sr.unh.edu/managed/220617_A01346_0065_AHFHV7DRX2_16Mer061722_AW_HDAR-ss2/reads \
    4 \
    mifish &> data/runlogs/runlog.16Mer061722_AW_HDAR-ss2.out





    220614_A01346_0064_BHFHC7DRX2_16Mer061422_AW_HDAR-ss1

code/qiime2_denoise.sh  \
    16Mer061422_AW_HDAR-ss1 \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220614_A01346_0064_BHFHC7DRX2_16Mer061422_AW_HDAR-ss1/reads \
    4 \
    mifish &> data/runlogs/runlog.16Mer061422_AW_HDAR-ss1.out


## wget -r -np -R "index.html*" --http-user=user --http-password=SyJsRMPMIT https://cobb.sr.unh.edu/managed/220624_A01346_0066_BHFHLHDRX2_16Mer062422_AW_HDAR-ss3/reads
# 220624_A01346_0066_BHFHLHDRX2_16Mer062422_AW_HDAR-ss3

code/qiime2_denoise.sh  \
    16Mer062422_AW_HDAR-ss3 \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220624_A01346_0066_BHFHLHDRX2_16Mer062422_AW_HDAR-ss3/reads \
    4 \
    mifish &> data/runlogs/runlog.16Mer062422_AW_HDAR-ss3.out



## https://cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_HIDARss4MF/reads
code/qiime2_denoise.sh  \
    HIDARss4MF \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_HIDARss4MF/reads \
    4 \
    mifish &> data/runlogs/runlog.HIDARss4MF.out


## wget -r -np -R "index.html*" --http-user=user --http-password=yoYthiWYef https://cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_HIDARss118s/reads
code/qiime2_denoise.sh  \
    HIDARss118s \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_HIDARss118s/reads \
    4 \
    18s &> data/runlogs/runlog.HIDARss118sout


## wget -r -np -R "index.html*" --http-user=user --http-password=nMABlqpIgV https://cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_NERR-ANERR-MF-1/reads
code/qiime2_denoise.sh  \
    NERR-ANERR-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_NERR-ANERR-MF-1/reads \
    4 \
    mifish &> data/runlogs/runlog.NERR-ANERR-MF-1



#wget -r -np -R "index.html*" --http-user=user --http-password=ogrkLXlOfG https://cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_Aliya-MF-1/reads &
code/qiime2_denoise.sh  \
    Aliya-MF-1 \
    data/Aliya \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_Aliya-MF-1/reads \
    4 \
    mifish &> data/runlogs/runlog.Aliya-MF-1

#wget -r -np -R "index.html*" --http-user=user --http-password=FNqsAMdvRw https://cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_NERR-GTM-MF-1/reads &

code/qiime2_denoise.sh  \
    NERR-GTM-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_NERR-GTM-MF-1/reads \
    4 \
    mifish &> data/runlogs/runlog.NERR-GTM-MF-1


#wget -r -np -R "index.html*" --http-user=user --http-password=EKQAtNAVEF https://cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_NERR-JC-MF-1/reads &
code/qiime2_denoise.sh  \
    NERR-JC-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_NERR-JC-MF-1/reads \
    4 \
    mifish &> data/runlogs/runlog.NERR-JC-MF-1






    2664588.pts-85.ron
   #wget -r -np -R "index.html*" --http-user=user --http-password=guoyBhVLhQ https://cobb.sr.unh.edu/managed/220722_A01346_0072_AHGCWGDRX2_16Mer072222_AW_NERRPB-MF/reads
   # code/qiime2_denoise.sh  \
    NERRPB-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220722_A01346_0072_AHGCWGDRX2_16Mer072222_AW_NERRPB-MF/reads \
    4 \
    mifish &> data/runlogs/runlog.NERRPB-MF 
   


   #wget -r -np -R "index.html*" --http-user=user --http-password=uPWQsdEMEE https://cobb.sr.unh.edu/managed/220722_A01346_0072_AHGCWGDRX2_16Mer072222_AW_NERRSF-MF/reads
   code/qiime2_denoise.sh  \
    NERRSF-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220722_A01346_0072_AHGCWGDRX2_16Mer072222_AW_NERRSF-MF/reads \
    4 \
    mifish &> data/runlogs/runlog.NERRSF-MF
   



    2560000.pts-22.ron
   #wget -r -np -R "index.html*" --http-user=user --http-password=qEOLHYwxnM https://cobb.sr.unh.edu/managed/220722_A01346_0072_AHGCWGDRX2_16Mer072222_AW_NERRHE-MF/reads
   # code/qiime2_denoise.sh  \
    NERRHE-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220722_A01346_0072_AHGCWGDRX2_16Mer072222_AW_NERRHE-MF/reads \
    4 \
    mifish &> data/runlogs/runlog.NERRHE-MF-1
   





    990886.pts-92.ron
   #wget -r -np -R "index.html*" --http-user=user --http-password=tvDksrnrGg https://cobb.sr.unh.edu/managed/220722_A01346_0072_AHGCWGDRX2_16Mer072222_AW_NERRMA-MF/reads
   # code/qiime2_denoise.sh  \
    NERRMA-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220722_A01346_0072_AHGCWGDRX2_16Mer072222_AW_NERRMA-MF/reads \
    4 \
    mifish &> data/runlogs/runlog.NERRMA-MF-1
   
   2657404.pts-0.ron 
   #wget -r -np -R "index.html*" --http-user=user --http-password=FaDMtsGviB https://cobb.sr.unh.edu/managed/220722_A01346_0072_AHGCWGDRX2_16Mer072222_AW_NERRSS-MF/reads
   code/qiime2_denoise.sh  \
    NERRSS-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220722_A01346_0072_AHGCWGDRX2_16Mer072222_AW_NERRSS-MF/reads \
    4 \
    mifish &> data/runlogs/runlog.NERRSS-MF-1

   #wget -r -np -R "index.html*" --http-user=user --http-password=tvDksrnrGg https://cobb.sr.unh.edu/managed/220722_A01346_0072_AHGCWGDRX2_16Mer072222_AW_NERRMA-MF/reads
   code/qiime2_denoise.sh  \
    NERRMA-MF-1 \
    data/NERR \
    /home/unhAW/jtmiller/watts/data/NERR/runs/NERRMA-MF-1/reads/poly-G-trimmed \
    4 \
    mitohelper &>> data/runlogs/runlog.NERRMA-MF-1





#wget -r -np -R "index.html*" --http-user=user --http-password=MNvBMYXOfO https://cobb.sr.unh.edu/managed/220803_A01346_0074_BHGF2VDRX2_16Mer080322_AW_NERRGB-MF/reads
#code/qiime2_denoise.sh  \
#    NERRGB-MF-1 \
#    data/NERR \
#    /home/unhAW/jtmiller/watts/raw-data/cobb.sr.unh.edu/managed/220803_A01346_0074_BHGF2VDRX2_16Mer080322_AW_NERRGB-MF/reads \
#    4 \
#    mitohelper &>> data/runlogs/runlog.NERRGB-MF-1



#wget -r -np -R "index.html*" --http-user=user --http-password=MtaQCiopnq https://cobb.sr.unh.edu/managed/220803_A01346_0074_BHGF2VDRX2_16Mer080322_AW_NERRWE-MF/reads
code/qiime2_denoise.sh  \
    NERRWE-MF-1 \
    data/NERR \
    /home/unhAW/jtmiller/watts/raw-data/cobb.sr.unh.edu/managed/220803_A01346_0074_BHGF2VDRX2_16Mer080322_AW_NERRWE-MF \
    4 \
    mitohelper &>> data/runlogs/runlog.NERRWE-MF-1

## wget -r -np -R "index.html*" --http-user=user --http-password=itnGvRDcYI https://cobb.sr.unh.edu/managed/220803_A01346_0074_BHGF2VDRX2_16Mer080322_AW_HIDARFC-MF/reads
code/qiime2_denoise.sh  \
    HIDARFC-MF \
    data/hawaii \
    /home/unhAW/jtmiller/watts/raw-data/cobb.sr.unh.edu/managed/220803_A01346_0074_BHGF2VDRX2_16Mer080322_AW_HIDARFC-MF \
    4 \
    mitohelper &>> data/runlogs/runlog.HIDARFC-MF






### NERRS


## wget -r -np -R "index.html*" --http-user=user --http-password=nMABlqpIgV https://cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_NERR-ANERR-MF-1/reads
code/qiime2_denoise.sh  \
    NERR-ANERR-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_NERR-ANERR-MF-1/reads \
    4 \
    mitohelper &>> data/runlogs/runlog.ANERR-MF-1
    

#wget -r -np -R "index.html*" --http-user=user --http-password=FNqsAMdvRw https://cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_NERR-GTM-MF-1/reads &
code/qiime2_denoise.sh  \
    NERR-GTM-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_NERR-GTM-MF-1/reads \
    4 \
    mitohelper &>> data/runlogs/runlog.NERR-GTM-MF-1


#wget -r -np -R "index.html*" --http-user=user --http-password=EKQAtNAVEF https://cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_NERR-JC-MF-1/reads &
code/qiime2_denoise.sh  \
    NERR-JC-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_NERR-JC-MF-1/reads \
    4 \
    mitohelper &>> data/runlogs/runlog.NERR-JC-MF-1


code/qiime2_denoise.sh  \
    NERRPB-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220722_A01346_0072_AHGCWGDRX2_16Mer072222_AW_NERRPB-MF/reads \
    4 \
    mitohelper &> data/runlogs/runlog.NERRPB-MF 



code/qiime2_denoise.sh \
  NERRMA-MF-1 \
  data/NERR \
  raw-data/cobb.sr.unh.edu/managed/220722_A01346_0072_AHGCWGDRX2_16Mer072222_AW_NERRMA-MF/reads \
  4 \
 mitohelper &> data/runlogs/runlog.NERRMA-MF-1

code/qiime2_denoise.sh  \
    NERRSS-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220722_A01346_0072_AHGCWGDRX2_16Mer072222_AW_NERRSS-MF/reads \
    8 \
    mitohelper &>> data/runlogs/runlog.NERRSS-MF-1


code/qiime2_denoise.sh  \
     NERRSF-MF-1 \
     data/NERR \
     raw-data/cobb.sr.unh.edu/managed/220722_A01346_0072_AHGCWGDRX2_16Mer072222_AW_NERRSF-MF/reads \
     8 \
     mitohelper &>> data/runlogs/runlog.NERRSF-MF



code/qiime2_denoise.sh  \
    NERRHE-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220722_A01346_0072_AHGCWGDRX2_16Mer072222_AW_NERRHE-MF/reads \
    4 \
    mitohelper &> data/runlogs/runlog.NERRHE-MF-1



code/qiime2_denoise.sh  \
    NERRGB-MF-1 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220803_A01346_0074_BHGF2VDRX2_16Mer080322_AW_NERRGB-MF/reads \
    4 \
    mitohelper &> data/runlogs/runlog.NERRHE-MF-1


#wget -r -np -R "index.html*" --http-user=user --http-password=MtaQCiopnq https://cobb.sr.unh.edu/managed/220803_A01346_0074_BHGF2VDRX2_16Mer080322_AW_NERRWE-MF/reads
code/qiime2_denoise.sh  \
    NERRWE-MF-1 \
    data/NERR \
    /home/unhAW/jtmiller/watts/raw-data/cobb.sr.unh.edu/managed/220803_A01346_0074_BHGF2VDRX2_16Mer080322_AW_NERRWE-MF \
    4 \
    mitohelper &>> data/runlogs/runlog.NERRWE-MF-1









## HDAR
# wget -r -np -R "index.html*" --http-user=user --http-password=Eaewipkokn https://cobb.sr.unh.edu/managed/220822_A01346_0076_AH5KV5DRX2_16Mer082222_AW_HIDAR_P1_18s/reads

code/qiime2_denoise.sh  \
    HIDAR_P1_18s \
    data/hawaii \
    /home/unhAW/jtmiller/watts/raw-data/cobb.sr.unh.edu/managed/220822_A01346_0076_AH5KV5DRX2_16Mer082222_AW_HIDAR_P1_18s/reads \
    4 \
    18s &>> data/runlogs/runlog.HIDAR_P1_18s



## wget -r -np -R "index.html*" --http-user=user --http-password=tpchGDNGMS https://cobb.sr.unh.edu/managed/220822_A01346_0076_AH5KV5DRX2_16Mer082222_AW_HIDAR_P2_18s/reads
code/qiime2_denoise.sh  \
    HIDAR_P2_18s \
    data/hawaii \
    /home/unhAW/jtmiller/watts/raw-data/cobb.sr.unh.edu/managed/220822_A01346_0076_AH5KV5DRX2_16Mer082222_AW_HIDAR_P2_18s/reads \
    4 \
    18s &>> data/runlogs/runlog.HIDAR_P2_18s





## Re run denoise on HDAR sets
code/qiime2_denoise.sh  \
    HIDARss2MF \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220617_A01346_0065_AHFHV7DRX2_16Mer061722_AW_HDAR-ss2/reads \
    4 \
    mitohelper &>> data/runlogs/runlog.16Mer061722_AW_HDAR-ss2.out

code/qiime2_denoise.sh  \
    HIDARss1MF \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220614_A01346_0064_BHFHC7DRX2_16Mer061422_AW_HDAR-ss1/reads \
    4 \
    mitohelper &>> data/runlogs/runlog.16Mer061422_AW_HDAR-ss1.out

code/qiime2_denoise.sh  \
    HIDARss3MF \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220624_A01346_0066_BHFHLHDRX2_16Mer062422_AW_HDAR-ss3/reads \
    4 \
    mitohelper &>> data/runlogs/runlog.16Mer062422_AW_HDAR-ss3.out

code/qiime2_denoise.sh  \
    HIDARss4MF \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_HIDARss4MF/reads \
    8 \
    mitohelper &>> data/runlogs/runlog.HIDARss4MF.out



wget -r -np -R "index.html*" --http-user=user --http-password=rNngdlGbkr https://cobb.sr.unh.edu/managed/220829_A01346_0077_BH5H2KDRX2_16Mer082922_AW_HIDARHE-MF/reads
code/qiime2_denoise.sh  \
    HIDARHE-MF \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220829_A01346_0077_BH5H2KDRX2_16Mer082922_AW_HIDARHE-MF/reads \
    8 \
    mitohelper &>> data/runlogs/runlog.HIDARHE-MF.out


wget -r -np -R "index.html*" --http-user=user --http-password=YjIDrmYVCW https://cobb.sr.unh.edu/managed/220829_A01346_0077_BH5H2KDRX2_16Mer082922_AW_HIDAR_P3_18s/reads
code/qiime2_denoise.sh  \
    HIDAR_P3_18s \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220829_A01346_0077_BH5H2KDRX2_16Mer082922_AW_HIDAR_P3_18s/reads \
    8 \
    18s &>> data/runlogs/runlog.HIDAR_P3_18s.out



######## NERRS
   #wget -r -np -R "index.html*" --http-user=user --http-password=iFuliPSaMh https://cobb.sr.unh.edu/managed/220829_A01346_0077_BH5H2KDRX2_16Mer082922_AW_NERRAB-MF/reads
   code/qiime2_denoise.sh  \
    NERRAB-MF-2 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220829_A01346_0077_BH5H2KDRX2_16Mer082922_AW_NERRAB-MF/reads \
    8 \
    mitohelper &>> data/runlogs/runlog.NERRAB-MF-2.out

   

   #wget -r -np -R "index.html*" --http-user=user --http-password=xhMkNvOsDv https://cobb.sr.unh.edu/managed/220829_A01346_0077_BH5H2KDRX2_16Mer082922_AW_NERRGB-MF/reads
   code/qiime2_denoise.sh  \
    NERRGB-MF-2 \
    data/NEER \
    raw-data/cobb.sr.unh.edu/managed/220829_A01346_0077_BH5H2KDRX2_16Mer082922_AW_NERRGB-MF/reads \
    8 \
    mitohelper &>> data/runlogs/runlog.NERRGB-MF-2.out



## Lakes
   #wget -r -np -R "index.html*" --http-user=user --http-password=SdTReJavfa https://cobb.sr.unh.edu/managed/220829_A01346_0077_BH5H2KDRX2_16Mer082922_AW_LAKES-KLY/reads
   code/qiime2_denoise.sh  \
    LAKES-KLY \
    data/Lakes \
    raw-data/cobb.sr.unh.edu/managed/220829_A01346_0077_BH5H2KDRX2_16Mer082922_AW_LAKES-KLY/reads \
    8 \
    klymus &>> data/runlogs/runlog.LAKES-KLY.out

## DAR
## wget -r -np -R "index.html*" --http-user=user --http-password=DfprxERsae https://cobb.sr.unh.edu/managed/220829_A01346_0077_BH5H2KDRX2_16Mer082922_AW_HIDARFC-MF/reads
code/qiime2_denoise.sh  \
    HIDARFC-MF-2 \
    data/hawaii  \
    raw-data/cobb.sr.unh.edu/managed/220829_A01346_0077_BH5H2KDRX2_16Mer082922_AW_HIDARFC-MF/reads \
    12 \
    mitohelper &>> data/runlogs/runlog.HIDARFC-MF-2.out



## rerun 
code/qiime2_denoise.sh  \
    HIDARss118s \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_HIDARss118s/reads \
    4 \
    18s &>> data/runlogs/runlog.HIDARss118sout






#wget -r -np -R "index.html*" --http-user=user --http-password=NxAuGCAwxr https://cobb.sr.unh.edu/managed/220912_A01346_0078_AH5GYNDRX2_16Mer091222_AW_NERRSPB-MFNX083122/reads
code/qiime2_denoise.sh  \
    NERRPB-MF-2 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220912_A01346_0078_AH5GYNDRX2_16Mer091222_AW_NERRSPB-MFNX083122/reads \
    4 \
   mitohelper &>> data/runlogs/runlog.NERRPB-MF-2



#wget -r -np -R "index.html*" --http-user=user --http-password=kQVrWjrxwW https://cobb.sr.unh.edu/managed/220923_A01346_0079_BH3LWFDRX2_16Mer092322-AW-NERRMASS-MFNX091222/reads
code/qiime2_denoise.sh  \
    NERRSS-MF-2 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220923_A01346_0079_BH3LWFDRX2_16Mer092322-AW-NERRMASS-MFNX091222/reads \
    4 \
   mitohelper &>> data/runlogs/runlog.NERRSS-MF-2


#wget -r -np -R "index.html*" --http-user=user --http-password=MyXhVAprQY https://cobb.sr.unh.edu/managed/220923_A01346_0079_BH3LWFDRX2_16Mer092322-AW-NERRWE-MFNX091222/reads
code/qiime2_denoise.sh  \
    NERRWE-MF-2 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220923_A01346_0079_BH3LWFDRX2_16Mer092322-AW-NERRWE-MFNX091222/reads \
    4 \
   mitohelper &>> data/runlogs/runlog.NERRWE-MF-2



#wget -r -np -R "index.html*" --http-user=user --http-password=KOlDRYsdqL https://cobb.sr.unh.edu/managed/220923_A01346_0079_BH3LWFDRX2_16Mer092322-AW-NERRGTM-MFNX091622/reads
code/qiime2_denoise.sh  \
    NERRGTM-MF-2 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/220923_A01346_0079_BH3LWFDRX2_16Mer092322-AW-NERRGTM-MFNX091622/reads \
    4 \
   mitohelper &>> data/runlogs/runlog.NERRGTM-MF-2


#wget -r -np -R "index.html*" --http-user=user --http-password=PUavrvIWGj https://cobb.sr.unh.edu/managed/221014_A01346_0082_AH3LY5DRX2_16Mer101222_AW_NERRJC-MFNX092022/reads
## running on 2766546.pts-377.ron
code/qiime2_denoise.sh  \
    NERRJC-MF-2 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/221014_A01346_0082_AH3LY5DRX2_16Mer101222_AW_NERRJC-MFNX092022/reads \
    4 \
    mitohelper &>> data/runlogs/runlog.NERRJC-MF-2

## wget -r -np -R "index.html*" --http-user=user --http-password=DjNLnpmhYH https://cobb.sr.unh.edu/managed/221014_A01346_0082_AH3LY5DRX2_16Mer101222_AW_NERRSF-MFNX091922/reads
code/qiime2_denoise.sh  \
    NERRSF-MF-2 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/221014_A01346_0082_AH3LY5DRX2_16Mer101222_AW_NERRSF-MFNX091922/reads \
    4 \
    mitohelper &>> data/runlogs/runlog.NERRSF-MF-2


## wget -r -np -R "index.html*" --http-user=user --http-password=VBJvPpWmAX https://cobb.sr.unh.edu/managed/221014_A01346_0082_AH3LY5DRX2_16Mer101222_AW_CYANO-16SNX092322/reads
## running on 2785131.pts-343.ron
code/qiime2_denoise.sh  \
    CYANO-16S-1 \
    data/cyano \
    raw-data/cobb.sr.unh.edu/managed/221014_A01346_0082_AH3LY5DRX2_16Mer101222_AW_CYANO-16SNX092322/reads \
    4 \
    16s &>> data/runlogs/runlog.CYANO-16S-1



## MF Riaz Evans
## wget -r -np -R "index.html*" --http-user=user --http-password=jRfvDswNHc https://cobb.sr.unh.edu/managed/221014_A01346_0082_AH3LY5DRX2_16Mer101222_AW_TEST-MiEvRiNX092822/reads
code/qiime2_denoise.sh  \
    TEST-MiEvRi \
    data/test_samples \
    raw-data/cobb.sr.unh.edu/managed/221014_A01346_0082_AH3LY5DRX2_16Mer101222_AW_TEST-MiEvRiNX092822/reads \
    4 \
    mitohelper &>> data/runlogs/runlog.TEST-MiEvRi





## CO1
## wget -r -np -R "index.html*" --http-user=user --http-password=olLeFaHyxT https://cobb.sr.unh.edu/managed/221014_A01346_0082_AH3LY5DRX2_16Mer101222_AW_TEST-CO1TS092822/reads
code/qiime2_denoise.sh  \
    TEST-CO1TS \
    data/test_samples \
    raw-data/cobb.sr.unh.edu/managed/221014_A01346_0082_AH3LY5DRX2_16Mer101222_AW_TEST-CO1TS092822/reads \
    8 \
    leray_co1 &>> data/runlogs/runlog.TEST-CO1TS


## wget -r -np -R "index.html*" --http-user=user --http-password=rdwhtuXRwO https://cobb.sr.unh.edu/managed/221014_A01346_0082_AH3LY5DRX2_16Mer101222_AW_TEST-CO1TS092822/reads

   

#wget -r -np -R "index.html*" --http-user=user --http-password=uJjuGYHVJx https://cobb.sr.unh.edu/managed/221110_A01346_0085_AH5HLVDRX2_16Mer111022_AW_HIDAR-18SNX102522/reads
code/qiime2_denoise.sh  \
    HIDAR-18SNX \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/221110_A01346_0085_AH5HLVDRX2_16Mer111022_AW_HIDAR-18SNX102522/reads \
    4 \
    18s &>> data/runlogs/runlog.HIDAR-18SNX




##wget -r -np -R "index.html*" --http-user=user --http-password=qGFBgXtDqg https://cobb.sr.unh.edu/managed/221110_A01346_0085_AH5HLVDRX2_16Mer111022_MKJM_GEN-725-825-MiFish/reads
code/qiime2_denoise.sh  \
    MillPond-MF-1 \
    data/GEN725 \
    raw-data/cobb.sr.unh.edu/managed/221110_A01346_0085_AH5HLVDRX2_16Mer111022_MKJM_GEN-725-825-MiFish/reads \
    8 \
   mitohelper &>> data/runlogs/runlog.MillPond-MF-1


#wget -r -np -R "index.html*" --http-user=user --http-password=iYBsHVaocc https://cobb.sr.unh.edu/managed/221026_A01346_0084_BH3LMNDRX2_16Mer102622_CaldwellFurey-Fish-eDNA/reads
code/qiime2_denoise.sh  \
    CaldwellFurey-Fish-eDNA \
    data/Aliya \
    raw-data/cobb.sr.unh.edu/managed/221026_A01346_0084_BH3LMNDRX2_16Mer102622_CaldwellFurey-Fish-eDNA/reads \
    8 \
    mitohelper &>> data/runlogs/runlog.CaldwellFurey-Fish-eDNA


# wget -r -np -R "index.html*" --http-user=user --http-password=XjafeiUGRE https://cobb.sr.unh.edu/managed/221026_A01346_0084_BH3LMNDRX2_16Mer102622_AW_MFStRRiazNX101122/reads
code/qiime2_denoise.sh  \
    MFStRRiazNX101122 \
    data/test_samples \
    raw-data/cobb.sr.unh.edu/managed/221026_A01346_0084_BH3LMNDRX2_16Mer102622_AW_MFStRRiazNX101122/reads \
    8 \
    mitohelper &>> data/runlogs/runlog.MFStRRiazNX101122




## wget -r -np -R "index.html*" --http-user=user --http-password=IFNcFYedga https://cobb.sr.unh.edu/managed/221026_A01346_0084_BH3LMNDRX2_16Mer102622_AW_Ac16sNX100622/reads
code/qiime2_denoise.sh  \
    Ac16sNX100622 \
    data/test_samples \
    raw-data/cobb.sr.unh.edu/managed/221026_A01346_0084_BH3LMNDRX2_16Mer102622_AW_Ac16sNX100622/reads \
    8 \
   16s &>> data/runlogs/runlog.Ac16sNX100622


   wget -r -np -R "index.html*" --http-user=user --http-password=IFNcFYedga https://cobb.sr.unh.edu/managed/221026_A01346_0084_BH3LMNDRX2_16Mer102622_AW_Ac16sNX100622/reads



#wget -r -np -R "index.html*" --http-user=user --http-password=fyHQoXrrLU https://cobb.sr.unh.edu/managed/221122_A01346_0086_BH5JG5DRX2_16Mer112222-AW-JeffMTest/reads
code/qiime2_denoise.sh  \
    JeffMTest \
    data/GEN725 \
    raw-data/cobb.sr.unh.edu/managed/221122_A01346_0086_BH5JG5DRX2_16Mer112222-AW-JeffMTest/reads \
    8 \
    mitohelper &>> data/runlogs/runlog.JeffMTest



## wget -r -np -R "index.html*" --http-user=user --http-password=iRRDrnGoNo https://cobb.sr.unh.edu/managed/221122_A01346_0086_BH5JG5DRX2_16Mer112222-AW-FouadTest/reads
## did not run- wrong adapter







wget -r -np -R "index.html*" --http-user=user --http-password=uNecymshlY https://cobb.sr.unh.edu/managed/221205_A01346_0087_BHHHWKDRX2_16Mer120722-AW-CYANO-16SNX111722/reads

#wget -r -np -R "index.html*" --http-user=user --http-password=KGivcCubAg https://cobb.sr.unh.edu/managed/221205_A01346_0087_BHHHWKDRX2_16Mer120722-AW-CYANO-16SNX110722/reads
# sklearn
code/qiime2_denoise.sh  \
    CYANO-16SNX110722 \
    data/cyano \
    raw-data/cobb.sr.unh.edu/managed/221205_A01346_0087_BHHHWKDRX2_16Mer120722-AW-CYANO-16SNX110722/reads \
    8 \
    16s_V4-V5 &>> data/runlogs/runlog.CYANO-16SNX110722


# wget -r -np -R "index.html*" --http-user=user --http-password=uYohIsCfID https://cobb.sr.unh.edu/managed/221205_A01346_0087_BHHHWKDRX2_16Mer120722-AWR-HIDARFC-MFNX112122/reads
code/qiime2_denoise.sh  \
    HIDARFC-MFNX112122 \
    data/hawaii \
    raw-data/cobb.sr.unh.edu/managed/221205_A01346_0087_BHHHWKDRX2_16Mer120722-AWR-HIDARFC-MFNX112122/reads \
    8 \
    mitofish &>> data/runlogs/runlog.HIDARFC-MFNX112122

## wget -r -np -R "index.html*" --http-user=user --http-password=aDimYTPkeh https://cobb.sr.unh.edu/managed/221205_A01346_0087_BHHHWKDRX2_16Mer120722-Fouad/reads
code/qiime2_denoise.sh  \
    16Mer120722-Fouad \
    data/test_samples \
    raw-data/cobb.sr.unh.edu/managed/221205_A01346_0087_BHHHWKDRX2_16Mer120722-Fouad/reads \
    8 \
    leray_co1 &>> data/runlogs/runlog.HIDARFC-MFNX112122


## wget -r -np -R "index.html*" --http-user=user --http-password=uNecymshlY https://cobb.sr.unh.edu/managed/221205_A01346_0087_BHHHWKDRX2_16Mer120722-AW-CYANO-16SNX111722/reads




## HIDAR COIs
wget -r -np -R "index.html*" --http-user=user --http-password=dfEgwNjihf https://cobb.sr.unh.edu/managed/221219_A01346_0089_AH5KNNDRX2_16Mer122022-AW-HIDAR-CO1TS121222/reads

## HIDAR 16s hawaii
wget -r -np -R "index.html*" --http-user=user --http-password=lVMLlQLdrQ https://cobb.sr.unh.edu/managed/221219_A01346_0089_AH5KNNDRX2_16Mer122022-AW-HIDAR-16SNX120722/reads

## HIDAR 16s hawaii
wget -r -np -R "index.html*" --http-user=user --http-password=wFbGjMtvsm https://cobb.sr.unh.edu/managed/221219_A01346_0089_AH5KNNDRX2_16Mer122022-AW-16SNX120922/reads

## HIDAR 16s hawaii
wget -r -np -R "index.html*" --http-user=user --http-password=CFGsixSifR https://cobb.sr.unh.edu/managed/221219_A01346_0089_AH5KNNDRX2_16Mer122022-AW-HIDAR-16SNX120622/reads



HIDARFC-MFNX112122

## HIDAR COI
#   wget -r -np -R "index.html*" --http-user=user --http-password=cAaPclqDod https://cobb.sr.unh.edu/managed/230106_A01346_0091_AHGWNJDRX2_16Mer010623-AW-CO1TS121522/reads
#   wget -r -np -R "index.html*" --http-user=user --http-password=rPUDJEmpkN https://cobb.sr.unh.edu/managed/230106_A01346_0091_AHGWNJDRX2_16Mer010623-AW-CO1121922/reads


## CYANO 16s
   # wget -r -np -R "index.html*" --http-user=user --http-password=hJuYHMJSwT https://cobb.sr.unh.edu/managed/230106_A01346_0091_AHGWNJDRX2_16Mer010623-AW-CYANO-16SNX112922/reads
   # wget -r -np -R "index.html*" --http-user=user --http-password=EamXjyyqCJ https://cobb.sr.unh.edu/managed/230106_A01346_0091_AHGWNJDRX2_16Mer010623-AW-CYANO-16SNX113022/reads
   # wget -r -np -R "index.html*" --http-user=user --http-password=xFRJmuHqer https://cobb.sr.unh.edu/managed/230106_A01346_0091_AHGWNJDRX2_16Mer010623-AW-CYANO-16SNX112222/reads


code/qiime2_denoise.sh  \
    CYANO-16SNX112922 \
    data/cyano \
    raw-data/cobb.sr.unh.edu/managed/230106_A01346_0091_AHGWNJDRX2_16Mer010623-AW-CYANO-16SNX112922/reads \
    8 \
    16s_V4-V5 \
    single &>> data/runlogs/runlog.CYANO-16SNX112922


code/qiime2_denoise.sh  \
    CYANO-16SNX113022 \
    data/cyano \
    raw-data/cobb.sr.unh.edu/managed/230106_A01346_0091_AHGWNJDRX2_16Mer010623-AW-CYANO-16SNX113022/reads \
    8 \
    16s_V4-V5 \
    single &>> data/runlogs/runlog.CYANO-16SNX113022

code/qiime2_denoise.sh  \
    CYANO-16SNX112222 \
    data/cyano \
    raw-data/cobb.sr.unh.edu/managed/230106_A01346_0091_AHGWNJDRX2_16Mer010623-AW-CYANO-16SNX112222/reads \
    8 \
    16s_V4-V5 \
    single &>> data/runlogs/runlog.CYANO-16SNX112222

## rerun
code/qiime2_denoise.sh  \
    CYANO-16SNX092322 \
    data/cyano \
    raw-data/cobb.sr.unh.edu/managed/221014_A01346_0082_AH3LY5DRX2_16Mer101222_AW_CYANO-16SNX092322/reads \
    8 \
    16s_V4-V5 \
    single &> data/runlogs/runlog.CYANO-16SNX092322


## rerun
code/qiime2_denoise.sh \
    CYANO-16SNX022822 \
    data/cyano \
    raw-data/cobb.sr.unh.edu/managed/220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_MV16s/reads \
    8 \
    16s_V4-V5 \
    single &> data/runlogs/runlog.CYANO-16SNX022822









## Aliya MF
# wget -r -np -R "index.html*" --http-user=user --http-password=aGELNnPWJD https://cobb.sr.unh.edu/managed/230113_A01346_0092_BHGVLKDRX2_16Mer011323-AC-MFtest/reads

code/qiime2_denoise.sh  \
    AC-MFtest \
    data/Aliya \
    raw-data/cobb.sr.unh.edu/managed/230113_A01346_0092_BHGVLKDRX2_16Mer011323-AC-MFtest/reads \
    8 \
    mitohelper &>> data/runlogs/runlog.AC-MFtest

## Algae 18s
## wget -r -np -R "index.html*" --http-user=user --http-password=iNtdYxvBvP https://cobb.sr.unh.edu/managed/230113_A01346_0092_BHGVLKDRX2_16Mer011323-AW-MEMAALGAE-18SNX011023/reads
    code/qiime2_denoise.sh  \
     18SNX011023 \
     data/algae \
     raw-data/cobb.sr.unh.edu/managed/230113_A01346_0092_BHGVLKDRX2_16Mer011323-AW-MEMAALGAE-18SNX011023/reads \
     8 \
     18s &>> data/runlogs/runlog.18SNX011023
   
   
## wget -r -np -R "index.html*" --http-user=user --http-password=RGkUXsOTmB https://cobb.sr.unh.edu/managed/230113_A01346_0092_BHGVLKDRX2_16Mer011323-AW-CTALGAE-18SNX010923/reads
code/qiime2_denoise.sh  \
     18SNX010923 \
     data/algae \
     raw-data/cobb.sr.unh.edu/managed/230113_A01346_0092_BHGVLKDRX2_16Mer011323-AW-CTALGAE-18SNX010923/reads \
     8 \
     18s &>> data/runlogs/runlog.18SNX010923





for f in *.fastq.gz ; do 

    echo -e "$f $(zgrep 'GTACACACCGCCCGTC' $f | wc -l)  $(zgrep 'TGATCCTTCTGCAGGTTCACCTAC' $f | wc -l)   $(zgrep '^@' $f | wc -l)"
    
done > primer_greps.txt &


zgrep -A1 '@'  CT14317b070822_S32_L001_R1_001.fastq.gz | grep -v 'TGATCCTTCTGCAGGTTCACCTAC' | less -S


for f in *.fastq.gz ; do 

    echo -e "$f $(zgrep '^GTACACACCGCCCGTC' $f | wc -l)  $(zgrep '^TGATCCTTCTGCAGGTTCACCTAC' $f | wc -l)   $(zgrep '^@' $f | wc -l)"
    
done > primer_greps.txt &


## do rev compliment
for f in *.fastq.gz ; do 

    echo -e "$f $(zgrep 'GACGGGCGGTGTGTAC' $f | wc -l)  $(zgrep 'GTAGGTGAACCTGCAGAAGGATCA' $f | wc -l)   $(zgrep '^@' $f | wc -l)"
    
done > primer_greps_rev_compliment.txt &



for f in $( ls *-2*R1_001.fastq.gz ) ; do 

echo $f
zgrep -A1 '^@' $f | grep -v '\-\-' | grep -v '^@' | cut -c-27 | sort | uniq -c | sort -k1 -h | tail

done


Rev primer                                                                                                                                        FW Rev complient Nexterra paired end RV Comp 
TGATCCTTCTGCAGGTTCACCTAC                                                                                                                         GACGGGCGGTGTGTAC CTGTCTCTTATACACATCTCCGAGCCCACGAGAC
TGATCCTTCTGCAGGTTCACCTACGGAAACCTTGTTACGACTTCACCTTCCTCTAAATGATAAGGTTCAGACAAGTTCTCATGATATGCACCACAGCACACACCACAATCTCGAGGCTTCACCGGACCATTCAATCGGTAGGTGCGACGGGCGGTGTGTAC CTGTCTCTTATACACATCTCCGAGCCCACGAGACACTGCACTATCTCGTATGCCGTCTTCTGCTTGAAAAGGGGGGGGGGGGGGGGGGGG

zgrep -A1 '^@' MA3479b090822_S42_L001_R1_001.fastq.gz | grep -v '^--'| grep -v '@' | cut -c-24 | sort | uniq -c | sort -k1 -h 

TCGTCGGCAGCGTCAGATGTGTATAAGAGACAG			CTGTCTCTTATACACATCTGACGCTGCCGACGA
GTCTCGTGGGCTCGGAGATGTGTATAAGAGACAG			CTGTCTCTTATACACATCTCCGAGCCCACGAGAC

## most common  
 TGATCCTTCTGCAGGTTCAC-TGTC  TCTTATACACATCTCCGAGCCCACGAGACACTGCACTATCTCGTATGCCGTCTTCTGCTTGAAAAGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG




qiime cutadapt trim-paired \
    --i-demultiplexed-sequences ${run}_demux.qza \
    --o-trimmed-sequences ${run}_demux_cutadapt.qza \
    --p-cores 16 \
    --p-front-f "$fw" \
    --p-front-r "$rv"  \
    --p-discard-untrimmed \
    --p-match-adapter-wildcards \
    --verbose \



#wget -r -np -R "index.html*" --http-user=user --http-password=uAbLeuESGk https://cobb.sr.unh.edu/managed/230127_A01346_0094_BHHHKFDRX2_16Mer012723B_AW_NERRAB-MFNX011723/reads
code/qiime2_denoise.sh  \
    NERRAB-MFNX011723 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/230127_A01346_0094_BHHHKFDRX2_16Mer012723B_AW_NERRAB-MFNX011723/reads \
    8 \
    mitohelper \
    paired &>> data/runlogs/runlog.NERRAB-MFNX011723


#wget -r -np -R "index.html*" --http-user=user --http-password=MKFpkqRYTl https://cobb.sr.unh.edu/managed/230127_A01346_0094_BHHHKFDRX2_16Mer012723B_AW_NERRAB-CO1NX011823/reads
code/qiime2_denoise.sh  \
    NERRAB-CO1NX011823 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/230127_A01346_0094_BHHHKFDRX2_16Mer012723B_AW_NERRAB-CO1NX011823/reads \
    8 \
    leray_co1 \
    paired &>> data/runlogs/runlog.NERRAB-CO1NX011823


wget -r -np -R "index.html*" --http-user=user --http-password=qPnyoKbsUa https://cobb.sr.unh.edu/managed/230203_A01346_0097_AHKTJGDRX2_16Mer020323-CaldwellFurey2-Fish-eDNA/reads
code/qiime2_denoise.sh  \
    CaldwellFurey2-MF \
    data/Aliya \
    raw-data/cobb.sr.unh.edu/managed/230203_A01346_0097_AHKTJGDRX2_16Mer020323-CaldwellFurey2-Fish-eDNA/reads \
    8 \
    mitohelper \
    paired &>> data/runlogs/runlog.CaldwellFurey2-MF






   wget -r -np -R "index.html*" --http-user=user --http-password=JAccBKvRoF https://cobb.sr.unh.edu/managed/230210_A01346_0099_BHKVYGDRX2_16Mer021023_AW_NERRAB-MFNX013023/reads
   code/qiime2_denoise.sh  \
    NERRAB-MFNX013023 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/230210_A01346_0099_BHKVYGDRX2_16Mer021023_AW_NERRAB-MFNX013023/reads \
    8 \
    mitohelper \
    paired &>> data/runlogs/runlog.NERRAB-MFNX013023

   
   wget -r -np -R "index.html*" --http-user=user --http-password=iNaQBTcFXy https://cobb.sr.unh.edu/managed/230210_A01346_0099_BHKVYGDRX2_16Mer021023_AW_NERRAB-MFNXSt020123/reads
   code/qiime2_denoise.sh  \
    NERRAB-MFNXSt020123 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/230210_A01346_0099_BHKVYGDRX2_16Mer021023_AW_NERRAB-MFNXSt020123/reads \
    8 \
    mitohelper \
    paired &>> data/runlogs/runlog.NERRAB-MFNXSt020123


   #wget -r -np -R "index.html*" --http-user=user --http-password=SOovosDWLj https://cobb.sr.unh.edu/managed/230210_A01346_0099_BHKVYGDRX2_16Mer021023_AW_NERRAB-CO1NX011823/reads
code/qiime2_denoise.sh  \
    NERRAB-CO1NX011823 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/230210_A01346_0099_BHKVYGDRX2_16Mer021023_AW_NERRAB-CO1NX011823/reads \
    8 \
    leray_co1 \
    paired &>> data/runlogs/runlog.NERRAB-CO1NX011823


    

code/qiime2_denoise.sh  \
    Aliya-MF-1 \
    data/Aliya \
    raw-data/cobb.sr.unh.edu/managed/220701_A01346_0068_BHFWFNDRX2_16Mer070122_AW_Aliya-MF-1/reads \
    8 \
    mitohelper \
    paired &>> data/runlogs/runlog.Aliya-MF-1




## 220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_2021WRMF
code/qiime2_denoise.sh \
    2021WRMF \
    data/wells \
    raw-data/cobb.sr.unh.edu/managed/220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_2021WRMF/reads \
    12 \
    mitohelper \
    paired &>> data/runlogs/runlog.16Mer022822_AW_2021WRMF





#wget -r -np -R "index.html*" --http-user=user --http-password=lFKugcRbxd https://cobb.sr.unh.edu/managed/230221_A01346_0100_BH5JTNDRX2_16Mer022123-AW-NERRSSGB-CO1NX013123/reads
code/qiime2_denoise.sh \
    NERRSSGB-CO1NX013123 \
    data/NERR \
    raw-data/cobb.sr.unh.edu/managed/230221_A01346_0100_BH5JTNDRX2_16Mer022123-AW-NERRSSGB-CO1NX013123/reads \
    12 \
    leray_co1 \
    paired &>> data/runlogs/runlog.NERRSSGB-CO1NX013123




## ~/watts/raw-data/raw-data_copied_from_DT/Maine_algae_2019/reads/
code/qiime2_denoise.sh  \
    Maine_algae_2019 \
    data/algae \
    ~/watts/raw-data/raw-data_copied_from_DT/Maine_algae_2019/reads \
    8 \
    18s \
    paired &>> data/runlogs/runlog.Maine_algae_2019



## 220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_2021MEalg18s
code/qiime2_denoise.sh \
    2021MEalg18s \
    data/algae \
    raw-data/cobb.sr.unh.edu/managed/220228_A01346_0049_AHVVMYDRXY_16Mer022822_AW_2021MEalg18s/reads \
    10 \
    18s \
    paired &> data/runlogs/runlog.16Mer022822_AW_2021MEalg18s


#wget -r -np -R "index.html*" --http-user=user --http-password=idUQkREeHa https://cobb.sr.unh.edu/managed/230320_A01346_0102_AHVKYWDRX2_16Mer031523-FEB-NERRS-Ac16s-CO1-MBON-NX020623-L2/reads
code/qiime2_denoise.sh \
    NERRS-Ac16s-CO1-MBON \
    data/test_samples \
    raw-data/cobb.sr.unh.edu/managed/230320_A01346_0102_AHVKYWDRX2_16Mer031523-FEB-NERRS-Ac16s-CO1-MBON-NX020623-L2/reads \
    10 \
    leray_co1 \
    paired &> data/runlogs/runlog.NERRS-Ac16s-CO1-MBON


code/qiime2_denoise.sh \
    AlgaeME-rbcLNX031523 \
    data/algae \
    /home/unhAW/jtmiller/watts/raw-data/cobb.sr.unh.edu/managed/230331_A01346_0103_BHHHGHDRX2_16Mer033123-AW-AlgaeME-rbcLNX031523 \
    10 \
    rbcl \
    paired &> data/runlogs/runlog.AlgaeME-rbcLNX031523


code/qiime2_denoise.sh \
    AlgaeME-rbcLNX031323 \
    data/algae \
    raw-data/cobb.sr.unh.edu/managed/230331_A01346_0103_BHHHGHDRX2_16Mer033123-AW-AlgaeME-rbcLNX031323 \
    10 \
    rbcl \
    paired &> data/runlogs/runlog.AlgaeME-rbcLNX031323