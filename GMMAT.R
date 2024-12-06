library(GMMAT)

# Load phenotype data
pheno <- read.table("RA_cleaned.fam", header = FALSE)
colnames(pheno) <- c("FID", "IID", "fa", "mo", "sex", "case")

# Load principal component data
pcs <- read.table("RA_pcs.txt", header = TRUE, as.is = TRUE)

# Merge phenotype and principal component data
pheno1 <- merge(pheno, pcs, by = c("FID", "IID"), all.x = TRUE)

# Read in the genetic relationship matrix (GRM)
grm <- as.matrix(read.table("TGEN_GRM.rel", header = FALSE))

# Read in the GRM ID file
grm.ids <- read.table("TGEN_GRM.rel.id", header = FALSE)

# Apply the IDs to the two dimensions of the GRM
dimnames(grm)[[1]] <- dimnames(grm)[[2]] <- grm.ids[, 2]

# Create Null models (no SNPs) for the score tests
model1.0 <- glmmkin(case - 1 ~ 1, data = pheno1, id = "IID", kins = grm, family = binomial("logit")) #no covariate
model2.0 <- glmmkin(case - 1 ~ PC1 + PC4, data = pheno1, id = "IID", kins = grm, family = binomial("logit")) # PC1 and PC4 covariates

# Perform score tests for both models on the specified PLINK fileset
geno.file <- "TGEN_cleaned"
glmm.score(model1.0, infile = geno.file, outfile = "q2_model1_score")
glmm.score(model2.0, infile = geno.file, outfile = "q2_model2_score")
