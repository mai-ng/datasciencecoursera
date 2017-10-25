# Matrix

### create an empty matrix
m1 <- matrix( nrow = 3, ncol = 3)

### create an object, then asign the dimension to this object
m2 <- 1:10

dim(m2) <- c(5, 2)


### create a matric by column-binding and row-binding

x <- 1:3
y <- 7:10

cbind(x, y)
rbind(x, y)


# Factors

### create a factor with default levels

fac1 <- factor(c("yes", "no", "no", "yes")) #levels: no yes

### create a factor with defined levels
fac2 <- factor(c("yes", "no", "no", "yes"), levels = c("yes", "no"))

# Remove NA values

x <- c(1, 2, NA, 4, 5, NA)
bad <- is.na(x)
bad
x[!bad] ## return goods values (not NA values) of x

y <- c("a", NA, "b", NA, "c", "d")

good <- complete.cases(x,y)
good


#Subsetting
x <- c("a", "b", "c", "d", "c")
### get the third element of x
x[3]

## get the first four elements of the vector x
x[1:4]

### get the elements that greater the "b"
x[ x> "b"]


# Subsetting lists
x <- list(foo = 1:4, bar = 0.6)
### get the element by name
x$foo
### partial matching
x$b
x[["b", exact = FALSE]]
