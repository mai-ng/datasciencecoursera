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

fac1 <- factor(c("yes", "no", "no", "yes"))