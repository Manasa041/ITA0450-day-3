library(ggplot2)
data(mpg)
library(moments)
skewness(mpg$cty / mpg$hwy)
library(ggplot2)
qplot(mpg$cty / mpg$hwy, geom = "histogram", bins = 20, xlab = "City Miles per Gallon")

# Calculate the kurtosis of the "city" variable in the mpg dataset
library(moments)
kurtosis(mpg$cty / mpg$hwy)
library(ggplot2)
qplot(mpg$cty / mpg$hwy, geom = "histogram", bins = 20, xlab = "City Miles per Gallon")