# This is a 4*4 within subject analyze
# The needed packages: psych, xlsx, bruceR(https://github.com/psychbruce/bruceR)
# This code can compute main effect and interaction, with F values, η^2, confidence interval.
# We should use wide-format data (same format as SPSS) to conduct 2-factors ANOVA, format examples are shown in 'Instruction.md'.
rm(list=ls()) #clear global environment
library(xlsx)
library(bruceR)
library(psych)
# load the data
rawdata=read.xlsx('input the document address')
MANOVA(data=rawdata,dvs="A1B1:A4B4",dvs.pattern="A(.)B(.)",within=c("A","B"),sph.correction="GG")
# The 'data' item means the dataset which we wish to conduct ANOVA.
# The 'dvs' item points out the data area. Since this is a 4*4 within subject analyze, we then got 16 levels (combinations). 
# The 'dvs.pattern' item points out the independent variables.
# The 'within' item points out which variable is within subject variable.
# When conducting MANOVA, the result will report whether the data volate the spherical assumption. If volated, then you should
# add [sph.correction="..."] in the MANOVA command. 'GG' means Greenhouse-Geisser correction.
# Result is shown in 'Instruction.md'.
