# 20 mice received a treatment X during 3 months. We want to know whether the
# treatment X has an impact on the weight of the mice.

# To answer this question the weight of the 20 mice has been measured before
# and after the treatment. This gives us 20 sets of values before treatment and
# 20 sets of values after treatment from measure the same mice twice.

# The mean weights before and after treatment will be compared using the paired
# t-test. The process for this is as follows:

# 1) calculate the difference (d) between each pair of values.
# 2) Compute the mean (m) and the standard deviation (s) of d.
# 3) Compare the average difference to 0. If there is any significant difference
# between the two pairs of sample, then
# the mean of d (m) is expected to be far from 0.

# This test only works when the difference (d) is normally distributed.

# Research questions:

# 1) Whether the mean difference (m) is equal to 0.
# 2) Whether the mean difference (m) is less than 0.
# 3) Whether the mean difference (m) is greater than 0.

# Notation in statistics:
# H0 : m = 0
# H0 : m <= 0
# H0 : m >= 0

# Ha : m != 0
# Ha : m > 0
# Ha : m < 0

# t.test(x, y, paired = TRUE, alternative = "two.sided")

# Import data into R.

# Data in two numeric vectors.

# Weight of the mice before treatment.
before <- c(200.1, 190.9, 192.7, 213, 241.4, 196.9, 172.2, 185.5, 205.2, 193.7)
# Weight of the mice after treatment.
after <- c(392.9, 393.2, 345.1, 393, 434, 427.9, 422, 383.9, 392.3, 352.2)
           
# Create a data.frame
my_data <- data.frame(
            
group = rep(c("before", "after"), each = 10),
weight <- c(before, after)
)

# Display a table of values.
print(my_data)

# Compute summary statistics by groups:
library(dplyr)
group_by(my_data, group) %>%
  summarise(
    count <- n(),
    mean <- mean(weight, na.rm = TRUE),
    sd <- sd(weight, na.rm = TRUE)
  )