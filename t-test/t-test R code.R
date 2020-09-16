# HW sample t-test analysis
# data reference -- Statistic for the Behavioral Science (7th)
# independent sample t-test
rm(list=ls()) #clear global environment
library(xlsx)
tfile=read.xlsx('D:/Wang Lab/R analysis/t-test/independent-sample_t-test.xlsx','Sheet1')
t.test(tfile$Group1,tfile$Group2,data=tfile,paired = FALSE)
# paired sample t-test
t.test(tfile$Group1,tfile$Group2,data=tfile,paired = TRUE)
