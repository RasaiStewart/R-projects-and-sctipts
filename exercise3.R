# Exercise 2 - More vector assignment and arithmetic
# arguments for seq are from, to, by
seq(from=1, to=5, by=2)

3:7

# nested functions
rep(seq(1, 3, 1), times=2)


x = c(10.4, 5.6, 3.1, 6.4, 21.7)
y = c(x, 0, x)
y


# Use function length() to check the number of elements in vectors x and y.
length(x) # The length of vector x is 5.
length(y) # The length of vector y is 11.


v = 2*x + y + 1
length(2*x)
length(y+1)


range(y)
mean(v)


?range


# Generate vector z using seq() and regular sequences.
z = seq(2*1:15)
print(z)


# Compare the following sequences.
n = 10
1:n-1
1:(n-1)
# The observation I made is when using a bracke the index changes.


