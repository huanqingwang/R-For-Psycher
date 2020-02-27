# When doing multi-levels analyze, sometime we need to compare different levels after seeing main effect,
# or need to further explore simple effect after seeing interaction.
# Here is the code to realize it.
MANOVA(data=rawdata,dvs="A1B1:A4B4",dvs.pattern="A(.)B(.)",within=c("A","B"),sph.correction="GG")%>%
  EMMEANS("A",by="B",p.adjust="tukey")%>% #simple effect analyze
  EMMEANS("B",by="A",p.adjust="tukey")%>% #simple effect analyze
  EMMEANS("A",p.adjust="tukey")%>% #multiple comparison
  EMMEANS("B",p.adjust="tukey") #multiple comparison
# Tips: %>% is pipelined function, it can transfer the value to next line, thus simplified the code.
# The output results are shown in 'Introduction.md'.
