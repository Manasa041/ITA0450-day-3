install.packages("tigerstats")
# Load the tigerstats package
library(tigerstats)
# Create a sample dataframe with two categorical variables
dataframe1 <- data.frame(
  Status = c("Positive", "Negative", "Positive", "Positive", "Negative", "Negative"),
  Test = c("Test1", "Test1", "Test2", "Test2", "Test1", "Test2")
)
# Create an xtabs() formula to cross-tabulate "Status" and "Test"
xtabs(~ Status + Test, dataframe1)
# Create an xtabs() formula to cross-tabulate "Status" and "Test"
table1 <- xtabs(~ Status + Test, dataframe1)
# Display row percentages using the rowPerc() function
rowPerc(table1)