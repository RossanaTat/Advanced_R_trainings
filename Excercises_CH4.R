
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

# take care of the dimensionality of the objects here -why? (hint: recall recycling rules)

# 4. Why does mtcars[1:20] return an error? 
#    How does it differ from the similar mtcars[1:20, ] ? 

mtcars[1:20]

# hint: recall difference between subsetting a 2D object with a single index or with 
#       an index for each dimension

# When subsetting a data frame with a single vector, it behaves the same way as subsetting a list of columns. 
# So, mtcars[1:20] would return a data frame containing the first 20 columns of the dataset. However, as mtcars has only 11 columns, the index will be out of bounds and an error is thrown.)

# 5. What does df[is.na(df)] <- 0 do? How does it work?
df <- data.frame(a = 1:2, b = 1:2, c = c(NA, 3))
df[is.na(df)] <- 0


# --------------------------------------------------------------
# Subsetting single elements
# --------------------------------------------------------------

# 1. Brainstrom ways to extract the third value from the cyl variable in the mtcars dataset

# Select column first
mtcars$cyl[[3]]

mtcars[ , "cyl"][[3]]
mtcars[["cyl"]][[3]]
#with(mtcars, cyl[[3]])

# Select row first
mtcars[3, ]$cyl
mtcars[3, "cyl"]
mtcars[3, ][ , "cyl"]
mtcars[3, ][["cyl"]]

# Select simultaneously
mtcars[3, 2]
mtcars[[c(2, 3)]]

# --------------------------------------------------------------
# Subsetting and assignment
# --------------------------------------------------------------


# --------------------------------------------------------------
# Further applications
# --------------------------------------------------------------
