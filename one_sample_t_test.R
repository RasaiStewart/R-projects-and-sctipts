# Part 1 of comparing the means

# Unpaired Two samples T-test
# t-test function is t.test()

#shapiro.test()

# Install ggpubr
install.packages(ggpubr)

# Load packages
library(ggpubr)
library(ggplot2)

# Compute one sample t test
# Generate own dataset.

# paste0 combines values.


set.seed(1234)
my_data <- data.frame(
  name = paste0(rep("M_", 10), 1:10),
  weight = round(rnorm(10, 20, 2), 1)
)
  
set.seed(1234)  
rnorm(n = 5, mean = 0, sd = 1)  

# Create summary statistics
summary(my_data$weight)


# Research question
# Find average weight of different sizes from 25g.

# Normality tests
# Qualitative

# Introduce funtion
ggpubr::ggqqplot(my_data$weight) # QQ-plot
ggpubr::ggdensity(my_data$weight) # Histogram
hist(my_data$weight)
ggpubr::gghistogram(my_data$weight, bins = 5)


# homework
# Use rnorm(n, 20, 2) for different values of n.
# i.e. n=100, 1000, 10,000, QQ-plot

# Quantitative testing
shapiro.test(my_data$weight) # normality test

# Compute one sample t-test
# Average weight of mice is 25g.


# One sample t-test
t.test(x, mu = 0, alternative = 'two.sided")


# x: A vector containing data values.
# mu: The theoretial mean. The default value is 0.
# alternative: the alternative hypothesis.
# The values can be either "two.sided" (default), "greater" or "less".


# The average weight is 25.
set.seed(1234)
my_data <- data.frame(
name = paste0(rep("M_", 10), 1:10),
weight = round(rnorm(10, 20, 2), 1)
)


# Display first 10 rows in dataset.
head(my_data, 10)

# Summaries of weight.
summary(my_data$weight)


libray(ggpubr)
ggboxplot(my_data$weight,
ylab = "weight (g)", xlab = FALSE,
ggtheme = theme_minimal())


library("ggpubr")
ggplot(my_data$weight, ylab = "mens weight",
ggtheme = theme_minimal())


# Shapiro-Wilk test:
shapiro.test(my_data$weight)


# QQ plot of sample.


# One-sample t-test
res <- t.test(my_data$weight, mu = 25)
# Display results
res


# One tailed test for mean weight less than 25.
t.test(my_data$weight, mu = 25,
alternative = "less")


# One tailed test for mean weight greater than 25.
t.test(my_data$weight, mu = 25,
alternative = "greater")


# Display the p-value
res$p.value


# Display the mean
res$estimate


# Display the confidence interval.
res$conf.int


