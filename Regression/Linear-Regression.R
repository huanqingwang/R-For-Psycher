# We should use long format to conduct linear regression. Example of long format can be seen in 'Introduction.md'.
Ylm<-lm(Y~X1+X2,data=name_of_dataset)
GLM_summary(Ylm) # used to output the result 
# Command 'lm' is used to conduct regression. The command format is dependent_variable~independent1+independent2, data=dataset.
# Note: Y~X1+X2 is step-wise analyze.
# Example of the output result is shown in 'Introduction.md'.
