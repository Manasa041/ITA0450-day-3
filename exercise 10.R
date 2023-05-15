# Load the Titanic dataset
data(Titanic)

# Create a subset of the data with three categorical variables
dataframe1 <- as.data.frame(Titanic)
dataframe1 <- subset(dataframe1, select = c(Survived, Class, Sex))

# Create a multi-dimensional table using xtabs() function
dataframe2 <- xtabs(~ Survived + Class + Sex, dataframe1)
dataframe2
# Create a sample dataframe with three categorical variables
dataframe1 <- data.frame(
  Status = c("Positive", "Negative", "Positive", "Positive", "Negative", "Negative"),
  Gender = c("Male", "Female", "Male", "Female", "Male", "Female"),
  Test = c("Test1", "Test1", "Test2", "Test2", "Test1", "Test2")
)

# Create a multi-dimensional table using xtabs() function
dataframe2 <- xtabs(~ Status + Gender + Test, dataframe1)
dataframe2