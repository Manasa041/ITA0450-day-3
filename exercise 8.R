dataframe1 <- data.frame(
  Reference = c("KRXH", "KRPT", "FHRA", "CZKK", "CQTN", "PZXW", "SZRZ", "RMZE", "STNX", "TMDW"),
  Status = c("Accepted", "Accepted", "Rejected", "Accepted", "Rejected", "Accepted", "Rejected", "Rejected", "Accepted", "Accepted"),
  Gender = c("Female", "Male", "Male", "Female", "Female", "Female", "Male", "Female", "Female", "Female"),
  TestNewOrFollowUp = c("Test1", "Test1", "Test2", "Test3", "Test1", "Follow-up", "Test4", "Test2", "Test3", "Test1"))

library(gmodels)
library(stats)
status_gender_table<-xtabs(~ status + gender, data = dataframe1)
status_gender_table <- xtabs(~ Status + Gender, data = dataframe1)
print(status_gender_table)




