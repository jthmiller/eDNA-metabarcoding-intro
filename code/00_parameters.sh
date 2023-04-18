#!/bin/bash

## Set dada2 denoise-paired parameters for reference database, references taxa, denoise, truncation and trim parameters
if [ -z "$primer" ] ; then

     echo " primer should be set to 16s, 18s, mifish, or klymus" && exit

elif [ $primer == "rbcl" ] ; then

    fw1="AGGTGAAGTAAAAGGTTCWTACTTAAA"
    fw2="AGGTGAAGTTAAAGGTTCWTAYTTAAA"
    fw3="AGGTGAAACTAAAGGTTCWTACTTAAA"
    rv1="CCTTCTAATTTACCWACWACTG"
    rv2="CCTTCTAATTTACCWACAACAG"


    cutadapt_config="--p-front-f $fw1 \ \n --p-front-f $fw2\n --p-front-f\n $fw3\n --p-front-r $rv1\n --p-front-r $rv2\n"

    polyg_len=150

    ## denoise
    ## trunc
    trunclenr=200
    trunclenf=200

    ## trim
    trimleftf=0
    trimleftr=0

elif [ $primer == "mitohelper" ] ; then


    ## amplicon length ~163 - 185 bp
    ## primers length 48?
    ## region without primer 115 - 137

    fw=GTCGGTAAAACTCGTGCCAGC	
    rv=CATAGTGGGGTATCTAATCCCAGTTTG


    ## change this to 111 
    polyg_len=100

    ## denoise
    ## trunc
    trunclenr=150
    trunclenf=150

    ## trim
    trimleftf=0
    trimleftr=0

    ## taxonomy
    maxaccepts=10
    query_cov=0.80 
    perc_identity=0.97
    weak_id=0.80 
    tophit_perc_identity=0.90 

    refreads=${refreads:-12S-seqs-derep-uniq.qza}
    reftax=${reftax:-12S-tax-derep-uniq.qza}
    classif=${classif:-mitohelper/QIIME-compatible/mitofish-classifier.qza}
    blastdb=${blastdb:-mitohelper/QIIME-compatible/blast/12S-seqs-derep-db/12S-seqs-derep-db}

elif [ $primer == "18s" ] ; then

    
    ## amplicon length ~210 - 310 bp
    ## primers length 48?

    rw=GTACACACCGCCCGTC	
    fw=TGATCCTTCTGCAGGTTCACCTAC

    cutadapt_config=$( -g $fw1 -g $fw2 -g $fw3 -g $rv1 -g $rv2 )

    polyg_len=100

    ## denoise
    ## trunc
    trunclenf=165
    trunclenr=155

    ## trim
    trimleftf=0
    trimleftr=0

    ## taxonomy
    maxaccepts=10
    query_cov=0.4 
    perc_identity=0.8
    weak_id=0.70
    tophit_perc_identity=0.90

    ## reference
    refreads=${refreads:-silva-138-99-seqs.qza}
    reftax=${reftax:-silva-138-99-tax.qza}
    blastdb=${blastdb:-silva-138-99/blast}

elif [ $primer == "16s_V4-V5" ] ; then

    ## lenght ~510 bp
    ## primers length 19 + 20
    ## region without primer 471

    polyg_len=150

    reads=single
    ## this pipeline uses sklear instead of vsearch

    ## primer sequence
    fw=GTGYCAGCMGCCGCGGTAA	
    rv=CCGYCAATTYMTTTRAGTTT

    ## denoise
    ## trunc
    trunclenf=225
    trunclenr=225
    ## Doesnt this remove possibility of merging?

    ## trim
    trimleftf=0
    trimleftr=0

    ## taxonomy
    # maxaccepts=5
    # query_cov=0.4 
    # perc_identity=0.7 

    ## reference
    refreads=${refreads:-silva132_99.qza}
    reftax=${reftax:-majority_taxonomy_all_levels.qza}

elif [ $primer == "leray_co1" ] ; then

    ## amplicon length 313
    ## primers length 52?
    ## region 261
    
    fw=GGWACWGGWTGAACWGTWTAYCCYCC
    rv=TANACYTCNGGRTGNCCRAARAAYCA

    ## diasble adapter trimming with degenerate base primer
    polyg_len=100

    ## denoise
    ## trunc
    trunclenr=175
    trunclenf=175

    ## trim
    trimleftf=0
    trimleftr=0

    ## taxonomy
    maxaccepts=10
    query_cov=0.80
    perc_identity=0.90
    weak_id=0.80
    tophit_perc_identity=0.90

    refreads=${refreads:-bold_derep1_seqs.qza}
    reftax=${reftax:-bold_derep1_taxa.qza}

elif [ $primer == "multiplex" ] ; then


elif [ $primer == "Ac16s" ] ; then

    ## amplicon length 330
    ## primers length 48?
    ## region 282

    polyg_len=100

    ## Evans 16s Ac
    fw=CCTTTTGCATCATGATTTAGC
    rv=CAGGTGGCTGCTTTTAGGC

    ## denoise
    ## trunc
    trunclenr=175
    trunclenf=165

    ## trim
    trimleftf=0
    trimleftr=0

    ## taxonomy
    maxaccepts=10
    query_cov=0.80
    perc_identity=0.97
    weak_id=0.80
    tophit_perc_identity=0.90


else

    echo " primer should be 16s, 18s, mifish, CO1 or klymus - all lower case" && exit 

fi
