# Genetic Analysis of Rheumatoid Arthritis (RA) Using North American Rheumatoid Arthritis Consortium (NARAC) Data

This study was carried out as a final project for the course [SPH BS 859](https://www.bu.edu/academics/sph/courses/sph-bs-859/). 

## Dataset

The NARAC dataset comprises a case-control study of Rheumatoid Arthritis with 868 cases and 1,194 controls. Cases were recruited across the United States, predominantly of Northern European descent, and met the American College of Rheumatology criteria for RA. Controls were sourced from the New York Cancer Project, with a slight enrichment for individuals of Southern European or Ashkenazi Jewish ancestry. All subjects are considered unrelated.

**Acknowledgement**: [Genetic Analysis Workshop 16](https://doi.org/10.1002/gepi.20464)

## Methods

1. **Genetic Data Cleaning**:
   - **SNP Filtering**: Applied thresholds for minor allele frequency (MAF > 0.01), genotype call rate (missingness < 5%), and Hardy-Weinberg equilibrium (p > 1e-6).
   - **Individual Filtering**: Removed individuals with high missing genotype rates (>5%).

2. **Principal Component Analysis (PCA)**:
   - Performed PCA to identify and adjust for population stratification, using pruned SNPs to reduce linkage disequilibrium.

3. **Genome-Wide Association Studies (GWAS)**:
   - Conducted sex-specific GWAS to identify genetic associations with RA in males and females separately.
   - Combined results through meta-analysis to detect overall associations.

4. **Polygenic Risk Scores (PRS)**:
   - Calculated PRS using summary statistics from European and Asian populations to predict RA risk in the NARAC dataset.

## Key Findings

- **HLA Region Association**: The HLA region on chromosome 6 exhibited the most significant association with RA across all analyses.
- **Sex-Specific Differences**: Genetic associations were more pronounced in females, consistent with the higher prevalence of RA in women.
- **Population-Specific PRS Performance**:
  - The European-derived PRS explained a substantial proportion of variance in RA status within the NARAC dataset.
  - The Asian-derived PRS showed a weaker association, highlighting the importance of ancestry-matched PRS models.

## Citations

- Purcell S, Neale B, Todd-Brown K, et al. PLINK: A tool set for whole-genome association and population-based linkage analyses. *Am J Hum Genet*. 2007;81(3):559-575. [doi:10.1086/519795](https://doi.org/10.1086/519795)
- Price AL, Patterson NJ, Plenge RM, et al. Principal components analysis corrects for stratification in genome-wide association studies. *Nat Genet*. 2006;38(8):904-909. [doi:10.1038/ng1847](https://doi.org/10.1038/ng1847)
- Anderson CA, Pettersson FH, Clarke GM, et al. Data quality control in genetic case-control association studies. *Nat Protoc*. 2010;5(9):1564-1573. [doi:10.1038/nprot.2010.116](https://doi.org/10.1038/nprot.2010.116)
- Wray NR, Goddard ME, Visscher PM. Prediction of individual genetic risk to disease from genome-wide association studies. *Genome Res*. 2007;17(10):1520-1528. [doi:10.1101/gr.6665407](https://doi.org/10.1101/gr.6665407)

