
#### How do our pipelines differ?
- The default threshold for filtering reads without the primer site ```--p-error-rate``` is 0.1. Discuss when this should be adjusted?
- The rbcl primer set that we use has multiple forward and reverse primers, as well as degenerate bases. Jeff's pipeline specifies these in the cutadapt step with:

```
    --p-front-f AGGTGAAGTAAAAGGTTCWTACTTAAA
    --p-front-f AGGTGAAGTTAAAGGTTCWTAYTTAAA
    --p-front-f AGGTGAAACTAAAGGTTCWTACTTAAA
    --p-front-r CCTTCTAATTTACCWACWACTG
    --p-front-r CCTTCTAATTTACCWACAACAG
```
SCCWRP uses: