## General dependencies:#here
#install.packages("multtest")
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("multtest")#ok

install.packages("RColorBrewer")#ok
install.packages("pander")#ok
install.packages("pheatmap")#ok
install.packages("stats")#?
install.packages("scales")#ok
install.packages("scatterplot3d")#ok
install.packages("xcms")
## BioC dependencies

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(c("msdata", "mzR", "MSnbase","Biobase","BiocGenerics","magrittr","SummarizedExperiment"))
#mzR not okay Biogenerics not ok 
#mzR seems ok
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("BiocGenerics")
BiocManager::install("S4Vector")



if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("xcms")


install.packages("/var/folders/rd/qqkh6x2j0yj26km2m9kgz0980000gp/T/Rtmp2HvDMO/downloaded_packages/BiocGenerics_0.36.0.tar", repos = NULL, type = "source")
install.packages("/var/folders/rd/qqkh6x2j0yj26km2m9kgz0980000gp/T/Rtmp2HvDMO/downloaded_packages/xcms_3.10.2.tar.gz", repos = NULL, type = "source")
#xcms ok

library(xcms)
library(mzR)

install.packages('IRkernel') 

IRkernel::installspec(user = FALSE) 

#source("https://bioconductor.org/biocLite.R")
#biocLite(c("msdata", "xcms", "mzR", "MSnbase","Biobase","BiocGenerics","magrittr","SummarizedExperiment"))



library(xcms)
library(msdata)
library(multtest)
library(mzR)
library(RColorBrewer)
library(pander)
library(magrittr)
library(pheatmap)
library(BiocGenerics)
library(Biobase)
library(parallel)
library(stats)
library(SummarizedExperiment)
library(scales)

# Import dataset files location (where to find the MS files in mzML format)
# Here using MTBLS265: Individual variability in human blood metabolites identifies age-related differences (30 persons, whole blood data).
files = list.files("A:/IARC/Data/MTBLS265/sample", recursive = TRUE, full.names = TRUE)
xset = xcmsSet(files, method= "matchedFilter")
