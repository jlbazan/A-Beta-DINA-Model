############################################################################################
#  Codes used for the Supplementary Material from the article entitled                      #
# "A Cognitive Diagnosis Model for Latent Classification of Bounded Continuous Variables"  #
#                                                                                          #
# Fit the model referred to as Model A, as proposed in the present paper                   #                                                        #
#                                                                                          #
# Data are available in                                                                    #
# https://github.com/tobywise/covid19-risk-perception/blob/master/data/all_data_wide.csv   #      
#                                                                                          #                                                     #                              #
#                                                                                          #
# Code Author:                                                                             #                                                             
############################################################################################

####Loading the packages 

library("rstudioapi")
library("coda")
library("readxl")
library("R2jags")
library("loo")
library("psych")

#### Setting the directory and loading the functions

rm(list = ls())
setwd(dirname(rstudioapi::getActiveDocumentContext()$path)) 

#### Reading Q-Matrix and data set

Q <- read.csv("QApp2.csv")
str(Q)
Q<-Q[,-1]
Q
dim(Q)
#17x2

datac <- read.csv2("dataApp2.csv")
str(datac)
datac<-datac[,-1]
str(datac)
dim(datac)
#1668x19
describe(datac)

#### Preparing data set to JAGS
N=nrow(datac) 
J=ncol(datac) 
K=ncol(Q) 
C=2^K 
delta0 <- rep(1,2^K) #vector with size of possible profiles

#Matrix containing all possible profiles
As <- rep(0,K)
for(j in 1:K){
  temp <- combn(1:K,m=j)
  tempmat <- matrix(0,ncol(temp),K)
  for(j in 1:ncol(temp))
    tempmat[j,temp[,j]] <- 1
  As <- rbind(As,tempmat)
}
As <- as.matrix(As)

para <- c("u0", "phi0", "u1", "phi1", "pai","loglik","ppp")
data <- list(Y=datac, N=N, J=J, K=K, 
             C=C, q=Q, all.patterns=As, delta=delta0)

#### Fitting Model with JAGS

start_time <- proc.time()
jagsfit <- jags.parallel(data, inits=NULL, para, "BDINAmodelA.txt",  n.chains=2, 
                         n.iter = 5000, 
                         n.burnin = 1000, n.thin=1, jags.seed = 123)
end_time <- proc.time()
jags_time <- end_time-start_time

#### Saving results
results <- jagsfit$BUGSoutput$summary
results 
dim(results) 

write.csv(results[1:nrow(results),],"ResultsBDINAmodelAApp2.csv")

#### Post Analysis

jags_time
jagsfit
summary(jagsfit)
jagsfit$DIC
jagsfit$parameters.to.save

#Computing Item parameters
#deviance
results[1,]
#loglik 2 27048 (1591*17)
results[2:27048]

#pai
results[27049:27052]

#phio
results[27053:27069]

#phi1
results[27070:27086]

#ppp
results[27087]

#muo
results[27088:27104]

#mu1
results[27105:27121]

#model comparison criteria
#extract log-likelihood
loglik_m1<-jagsfit$BUGSoutput$sims.list$loglik
#waic
waic_m1<-waic(loglik_m1)
waic_m1
#looic
looic_m1<-loo(loglik_m1)
looic_m1

#### Saving Rdata

save.image("FitBDINAModelAApp2.RData")


