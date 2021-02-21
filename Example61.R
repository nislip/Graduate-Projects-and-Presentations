# Example 6.1
#--------------
# Import data set example_6_1 into global environment
# T^2 statistic for testing null H is constructed from differences
# of paired observations
#--------------

install.packages("matlib")
library(matlib)

# creating difference vectors

dj2 <- data.matrix(example_6_1$SS1 - example_6_1$SS2)
dj1 <- data.matrix(example_6_1$BOD1 - example_6_1$BOD2)
d <- cbind(dj1,dj2) # two column matrix 
dmeans <- colMeans(d) # Mean differences [13.27 -9.36]
n <- nrow(d) # Computing F dist. 
p <- ncol(d) #

S <- cov(d) # covariance matrix of mean differences
T2 <- n %*% t(dmeans) %*% inv(S) %*% dmeans # 13.6

# for alpha = 0.5 

