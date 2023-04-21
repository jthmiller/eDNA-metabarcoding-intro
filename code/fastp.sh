#!/bin/bash
source /opt/anaconda/anaconda/etc/profile.d/conda.sh

conda activate genomics

indir="$( realpath ${2})"
outdir="$( realpath ${3})"


for f in ${indir}/*R1_001.fastq.gz ; do 

r=$(echo $f | sed 's/_R1_/_R2_/g')
    rb=$(basename $r)
    fb=$(basename $f)


   fastp \
    --i $f \

    --html ${outdir}/html/${fb%_L002_R1_001.fastq.gz}.html \
    --out1 ${outdir}/$fb \
    --out2 ${outdir}/$rb \
    --cut_tail \
    --cut_tail_mean_quality 25 \
    --cut_tail_window_size 2 \
    --disable_adapter_trimming \
    -l ${1} \
    -g -Q

   echo $f
    
done