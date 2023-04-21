#!/bin/bash


conda activate

indir="${1}"
outdir="${2}"

for f in ${1}/*R1_001.fastq.gz ; do 

    r=$(echo $f | sed 's/_R1_/_R2_/g')
    
    fastp \
    --in1 $f \
    --in2 $r \
    --html ${2}/html/${f%_L002_R1_001.fastq.gz}.html \
    --out1 ${2}/$f \
    --out2 ${2}/$r \
    --cut_tail \
    --cut_tail_mean_quality 25 \
    --cut_tail_window_size 2 \
    --disable_adapter_trimming \
    -l 175 \
    -g -Q
    
    echo $f
    
done