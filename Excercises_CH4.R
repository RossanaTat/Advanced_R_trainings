
# Chapter 4: Subsetting Exercises 

# ------- Intro quiz --------- #

# 1. What is the result of subsetting a vector with positive integers, negative integers, a logical vector, or a character vector?

# 2. What’s the difference between [, [[, and $ when applied to a list?

# 3. When should you use drop = FALSE?

# 4. If x is a matrix, what does x[] <- 0 do? How is it different from x <- 0?

# --------- Answers --------- #

# 1. Positive integers select elements at specific positions, negative integers drop elements; 
#    logical vectors keep elements at positions corresponding to TRUE; 
#     character vectors select elements with matching names.

# 2. [ selects sub-lists: it always returns a list. If you use it with a single positive integer, it returns a list of length one. 
#    [[ selects an element within a list. $ is a convenient shorthand: x$y is equivalent to x[["y"]].
#
# 3. Use drop = FALSE if you are subsetting a matrix, array, or data frame and you want to preserve the original dimensions. 
#    You should almost always use it when subsetting inside a function.

# 4. If x is a matrix, x[] <- 0 will replace every element with 0, keeping the same number of rows and columns. 
#    In contrast, x <- 0 completely replaces the matrix with the value 0.

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

# Select row first
mtcars[3, ]$cyl
mtcars[3, "cyl"]
mtcars[3, ][ , "cyl"]
mtcars[3, ][["cyl"]]

# Select simultaneously
mtcars[3, 2]
mtcars[[c(2, 3)]]

# --------------------------------------------------------------
# Further applications
# --------------------------------------------------------------

# How would you order the columns of a df in alphabetical order?
# --combine order or sort with []

mtcars[order(names(mtcars))]
mtcars[sort(names(mtcars))]