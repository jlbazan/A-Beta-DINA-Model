# A-CDM-for-Classification-of-Bounded-Responses


 Codes used for the Supplementary Material from the article entitled                             
  "A Cognitive Diagnosis Model for Latent Classification of Bounded Continuous Variables" 
                          	     
                                                                                                   	
  Authors:							
  
Eduardo S. B. de Oliveiraˆ1, Xiaojing Wangˆ2, Jorge L. Bazan*3,4 and Jimmy de la Torre5 

1 Banco Pan, São Paulo, Brazil
2 Department of Statistics, University of Connecticut, Connecticut, USA
3 Faculty of Mathematics, Pontifícia Universidad Católica de Chile, Chile
4 Departamento de Matemática Aplicada e Estatística, Universidade de São Paulo, São Carlos, Brazil
5 Faculty of Education, The University of Hong Kong, Hong Kong, Hong Kong

											 
 Reproduce results show in the Table S1 from Supplementary Material                                               	
 Date: 12/20/2025                                                                                 	
 Note: Values in the Table can be reproduced by following the provided instructions. Real datas are also provided.				                                                        
#####################################################################################################

The .zip file with the paper codes is divided into two folders as follows:
"Application1" and "Application2" folders and files Packages.R with the necessaries R packages
what must be installed previously including JAGS software and README.tx wit the present instructions

####################################################################################################

The folder "Application1" contains the files necessary to reproduce the results based in Application 1. 
Inside this folder, we have six files  
     - "BDINAmodelA.txt" referring to bugs code of the named Model A.
     - "BDINAmodelB.txt" referring to bugs code of the named Model B.
     - "dataApp1.csv" referring to data set described in the paper. 
     - "QApp1.csv" referring to Q matrix described in the paper.
     - "FitBDINAModelAApp1.R referring to R code fitting the named Model A and obtaining results.
     - "FitBDINAModelBApp1.R referring to R code fitting the named Model B and obtaining results.


####################################################################################################

The folder "Application1" contains the files necessary to reproduce the results based in Application 1. 
Inside this folder, we have six files  
     - "BDINAmodelA.txt" referring to bugs code of the named Model A.
     - "BDINAmodelB.txt" referring to bugs code of the named Model B.
     - "dataApp1.csv" referring to data set described in the paper. 
     - "QApp1.csv" referring to Q matrix described in the paper.
     - "FitBDINAModelAApp1.R referring to R code fitting the named Model A and obtaining results.
     - "FitBDINAModelBApp1.R referring to R code fitting the named Model B and obtaining results.

#####################################################################################################

All the results were obtained in a Macbook Air M2 16gb RAM, Tahoe 26.2 

  
##########################################################################
In the following we present the R informations of the session

########################################################################

> sessionInfo()

R version 4.5.1 (2025-06-13)
Platform: aarch64-apple-darwin20
Running under: macOS Tahoe 26.2

Matrix products: default
BLAS:   /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libBLAS.dylib 
LAPACK: /Library/Frameworks/R.framework/Versions/4.5-arm64/Resources/lib/libRlapack.dylib;  LAPACK version 3.12.1

locale:
[1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8

time zone: America/Sao_Paulo
tzcode source: internal

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] psych_2.5.6       loo_2.8.0         R2jags_0.8-9      rjags_4-17        readxl_1.4.5     
[6] coda_0.19-4.1     rstudioapi_0.17.1

loaded via a namespace (and not attached):
 [1] backports_1.5.0   cellranger_1.1.0  lattice_0.22-7    magrittr_2.0.3    matrixStats_1.5.0
 [6] R2WinBUGS_2.1-23  glue_1.8.0        stringr_1.5.1     abind_1.4-8       parallel_4.5.1   
[11] lifecycle_1.0.4   cli_3.6.5         grid_4.5.1        mnormt_2.1.1      compiler_4.5.1   
[16] boot_1.3-31       tools_4.5.1       nlme_3.1-168      checkmate_2.3.2   rlang_1.1.6      
[21] stringi_1.8.7    
