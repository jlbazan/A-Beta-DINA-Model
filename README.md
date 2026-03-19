# A Cognitive Diagnosis Model for Latent Classification of Bounded Continuous Variable


## Eduardo S. B. de Oliveira<sup>1</sup>,  Xiaojing Wang<sup>2</sup>, Jorge L. Bazán<sup>3,4</sup>**, and Jimmy de la Torre<sup>5</sup>


<sup>1</sup>Banco Pan, São Paulo, Brazill  
<sup>2</sup>Department of Statistics, University of Connecticut, Storrs, USA  
<sup>3</sup>Faculty of Mathematics, Pontificia Universidad Católica de Chile, Chile
<sup>4</sup>Department of Applied Mathematics and Statistics, University of São Paulo, São Carlos, Brazil  
<sup>5</sup>Faculty of Education, The University of Hong Kong, Hong Kong, Hong Kong 

** Corresponding author:** Jorge L. Bazán, jlbazan@uc.cl, jlbazan@icmc.usp.br

    
                                                                                                   	
## Description											 
 Reproduce results show in the Table S1 from Supplementary Material from the article entitled                             
  "A Cognitive Diagnosis Model for Latent Classification of Bounded Continuous Variables" 
                          	                                                   	
 Date: 12/20/2025                                                                                 	
 Note: Values in the Table can be reproduced by following the provided instructions. Real datas are also provided.				                                                        
## Previous installations

To run the scripts, you will need the JAGS program through the R2JAGS package and other packages. See
Packages.R file with the necessaries R packages.(See details in Su and Yajima, 2025),
what must be installed previously.

Su Y, Yajima M (2025). R2jags: Using R to Run 'JAGS'. R package version 0.8-10, link: https://github.com/suyusung/r2jags
Sturtz, S., Ligges, U., & Gelman, A. (2005). R2WinBUGS: A package for running WinBUGS from R. *Journal of Statistical Software*, 12, 1-16
link: https://www.jstatsoft.org/index.php/jss/article/view/v012i03/33


## File description:

The .zip file with the paper codes is divided into two folders as follows:
"Application1" and "Application2" folders and files Packages.R with the necessaries R packages

1. The folder "Application1" contains the files necessary to reproduce the results based in Application 1. 
Inside this folder, we have six files  
     - "BDINAmodelA.txt" referring to bugs code of the named Model A.
     - "BDINAmodelB.txt" referring to bugs code of the named Model B.
     - "dataApp1.csv" referring to data set described in the paper. 
     - "QApp1.csv" referring to Q matrix described in the paper.
     - "FitBDINAModelAApp1.R referring to R code fitting the named Model A and obtaining results.
     - "FitBDINAModelBApp1.R referring to R code fitting the named Model B and obtaining results.

2. The folder "Application1" contains the files necessary to reproduce the results based in Application 1. 
Inside this folder, we have six files  
     - "BDINAmodelA.txt" referring to bugs code of the named Model A.
     - "BDINAmodelB.txt" referring to bugs code of the named Model B.
     - "dataApp1.csv" referring to data set described in the paper. 
     - "QApp1.csv" referring to Q matrix described in the paper.
     - "FitBDINAModelAApp1.R referring to R code fitting the named Model A and obtaining results.
     - "FitBDINAModelBApp1.R referring to R code fitting the named Model B and obtaining results.


## Instructions for Executing R and JAGS Codes

The following instructions describe how to execute the codes in R and WinBUGS:

1. Open the files .R in each folder and run the script in R.
3. Note that for default are consided the following MCMC values: niter=5000, nburnin=1000, nthin=1 and two chains.


## License

This repository is licensed under a custom **Personal Use License (2026)**.  
© 2026 Jorge L. Bazán, Eduardo S. B. de Oliveira, Xiaojing Wang and Jimmy de la Torre.  

- Personal use only  
- Redistribution and commercial use are prohibited  
- No modification of the code is allowed  
- Citation required if used in publications  

See the [LICENSE](./LICENSE.txt) file for full terms.


# How to cite this repository

To cite this repository, please use the following reference:

Jorge L. Bazán, Eduardo S. B. de Oliveira, Xiaojing Wang and Jimmy de la Torre (2026). Model in Jags: A Beta DINA model. Version v1.0. URL: https://github.com/jlbazan/A-Beta-DINA-Model.

If you prefer to include it as a BibTeX entry:

@misc{bazan2025wbcode, <br>
author = {Jorge L. Bazán and Eduardo S. B. de Oliveira and Xiaojing Wang and Jimmy de la Torre },  <br>
title = {Model in Jags: A Beta DINA model},  <br>
year = {2026},  <br>
version = {v1.0},
url = {https://github.com/jlbazan/A-Beta-DINA-Model}, <br>
note = {Github} <br>
} <br>


All the results were obtained in a Macbook Air M2 16gb RAM, Tahoe 26.2 


