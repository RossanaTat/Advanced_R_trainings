
# Chapter 4: Subsetting Exercises ###################################

# --------------------------------------------------------------
# Subsetting multiple elements
# --------------------------------------------------------------

# 1. Fix the errors
mtcars[mtcars$cyl = 4, ]  
mtcars[-1:4, ]
mtcars[mtcars$cyl <= 5]
mtcars[mtcars$cyl == 4 | 6, ]

# 2. Why does the following code yield five missing values? 
x <- 1:5
x[NA]

# NA treated as logical vector -it is recycled to the same length as the object being subset

# 3. What does upper.tri() return? How does subsetting a matrix with it work?

#'outer' creates a matrix where each element is the product of its row and column indices:
x <- outer(1:5, 1:5, FUN = "*")
x[upper.tri(x)]

# --------------------------------------------------------------
# Subsetting single elements
# --------------------------------------------------------------



# --------------------------------------------------------------
# Subsetting and assignment
# --------------------------------------------------------------


# --------------------------------------------------------------
# Further applications
# --------------------------------------------------------------
