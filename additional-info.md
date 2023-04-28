


#### Qiime2 vsearch (code/qiime_tax.sh)
The reference database of rbcl for Qiime built from ____ (script for building): 
Qiime object taxonomy: ref-dbs/
Qiime object sequences: ref-dbs/

##### Tronko (code/tronko_tax.sh)
See installation instructions for tronko [here](https://github.com/lpipes/tronko). The reference database of rbcl for tronko was built from [diat.barcode](https://github.com/fkeck/diatbarcode) with [this](script for building): 
Tree: ref-dbs/rbcl_diat.barcode-ref-tree.txt
FASTA: ref-dbs/rbcl_diat.barcode-MSA.fasta

#### Visualizing the taxonomy assignments
- Qiime2 can generate helpful interactive barplots of the taxa abundance for sample 

#### Optional steps:

- As an additional check for the taxonomy assignments, I get the top blast hits for each ASV. If you use a specialized reference database, such as we do here, there will be many sequences with 'unassigned' taxonomy. Blasting is a way to double check that unassigned sequences are in fact off target taxa. After assigning taxonomy and blasting the sequences, I pull the results qiime and tronko taxon  


## Alpha and Beta Diversity 
- requires metadata formatted for import into qiime2

## Differential Abundance Testing
Songbird
qurro