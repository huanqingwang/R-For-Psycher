# The needed packages: psych, xlsx, bruceR
# This code can compute main effect and interaction, with F values, η^2, confidence interval.
# use wide-format data (same format as SPSS) to conduct 2-factors ANOVA
rm(list=ls()) #clear global environment
library(xlsx)
library(bruceR)
library(psych)
# load the data
rawdata=read.xlsx('input the document address')
MANOVA(data=rawdata,dvs="A1B1:A4B4",dvs.pattern="A(.)B(.)",within=c("A","B"),sph.correction="GG")
# When conducting MANOVA, the result will report whether the data volate the spherical assumption. If volated, then you should
# add [sph.correction="..."] in the MANOVA command.
![Image text](https://github.com/huanqingwang/R-For-Psycher/blob/master/R-image/ManovaResult1.png)
