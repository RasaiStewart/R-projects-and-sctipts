# Exercise 1
# Create the vector (4, 5, 6) in three different ways using c(), seq() and the : operator.

# vector (4, 5, 6) made using c().
c(4, 5, 6)

# Vector made using seq().
# seq(from, to, by)
seq(from=4, to=6, by=1)
seq(4, 5, 6)

# vector (4, 5, 6) made using the : operator.
4:6


# Try creating the vector (2, 2, 1, 1) in at least two different ways.
# Vector made using c().
c(2, 2, 1, 1)

# Vector made using rep().
seq(from=2, to=1, by=1)

c(2, 2) + c(1, 1)


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
