# Sampling variability

# I will be analysing data from a dataset
# called Height and Weight. This dataset
# contains 1000 records.

# sampling variability

# Import data set 'Height and Weight into R.
mydata <- read.csv("weight-height.csv")
# The following code uses a library for measurements.
mydata$Height <- conv_unit(mydata$Height, "inch", "cm")
mydata$height <- round(mydata$Height,2)
mydata$Weight <- conv_unit(mydata$Weight, "lbs", "kg")
mydata$Weight <- round(mydata$Weight,2)
# Provides a summary of the data in the dataset,
# along with averages for each column.
mydata
summary(mydata)
plot(mydata)

# Use DT library Create a table to summarise the data
# in the height and weight dataset.
datatable(mydata, options = list(pageLength = 10,
                                 dom = 'tip',
                                 scrolly = 500,
                                 scroller = TRUE,
                                 scrollX = TRUE,
                                 fixedColumns = TRUE), width = "100%", height = "100%")

# The mean for the population height is: 168.5736.
mean(mydata$Height)

# Take a random sample of size 10.
x < sample(mydata$Height,10)

# Find the mean of sample x.
mean(x)

# Repeat this 1000 times.
heightSM < 0
smaplesize <- 10
rep <- 1000
set.seed(100)
for (i in 1:rep) {
  height[i] <- mean(sample(mydata$height,smapleSize))
}
height <- as.data.frame(height)
#kable(head(heightSM), caption = "A few of the Mean Heights")

# Plot an histogram of the previous data.
p < ggplot(data=height, aes(x=height)) +
  geom_histogram(aes(y =...density...), position="identity",
                 breaks=seq(min(height$height), max(height$height),
                            length.out = 20),
                 alpha=.5, color="light blue", fill="red") + 
  geom_density(alpha=.3, fill="brown", col="black") + 
  geom_vline(xintercept=mean(heightSM$height), linetype="dashed", color = "red", size=1) +
  geom_vline(xintercept=mean(mydata$Height), linetype="dashed", color = "blue", size=1) +
  annotate(geom="text", x=162, y=0.108, label="Population Mean",
           color="blue") + 
  geom_curve(aes(x = 162.5, y = 0.11, xend = mean(mydata$Height), yend = 0.14), arrow = arrow(length = unit(0.5, "cm")), curvature = -0.2)+ 
  labs(title="Sample Mean Histogram")+
  xlab(paste("Mean Height for Each Sample of Size", smapleSize))
p
