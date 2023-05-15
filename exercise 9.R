# Load the ggplot2 library
library(ggplot2)

# Create the stacked bar chart
ggplot(mtcars, aes(x = factor(cyl), fill = factor(am))) +
  geom_bar()

# Create a subset of the mtcars dataset with the "Reference" and "Status" columns
dataframe1 <- data.frame(
  Reference = c("A", "B", "A", "B", "A", "B"),
  Status = c("C", "C", "D", "D", "C", "D")
)

# Create a table using xtabs() function
dataframe2 <- xtabs(~ Reference + Status, dataframe1)
dataframe2
write.csv(dataframe2, file = "dataframe2.csv")