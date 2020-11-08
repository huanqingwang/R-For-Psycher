#CODE FOR Between Subject ANOVA
rm(list=ls()) #clear global environment
library(xlsx)
library(car)
library(afex)
library(emmeans)
rawdata=read.xlsx('C:/Users/dell/OneDrive/Documents/2019Socialdecision/fMRI/behavior_data/Behavior_analyse/decision_analyse/79total.xlsx','Sheet6')
deci_aov=aov_ez("Subject","decision",rawdata,within=c("harm","people"))
anova(deci_aov,es="pes")#calculate effect size
r1 <- emmeans(deci_aov, ~harm+people, model = "multivariate")#descriptive
r2 <- emmeans(deci_aov, ~harm, model = "multivariate")
r3 <- emmeans(deci_aov, ~people, model = "multivariate")
contrast(r1, by = "people")# post-hoc 
contrast(r1, by = "harm")