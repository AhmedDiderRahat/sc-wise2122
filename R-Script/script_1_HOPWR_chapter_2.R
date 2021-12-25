library("ggplot2")

x <- c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1)

y <- x^3

#qucik plot for x and x^3
qplot(x,y)

#quick plot with one extra parameter
z1 <- c(1, 2, 2, 2, 3, 3)
qplot(z1, binwidth=1)

#quick plot for another histogram
z2 = c(1, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 4)
qplot(z2, binwidth=1)

x1 <- replicate(3, 1+1)
x1


roll <- function(){
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}


#replicate function use for iteration/looping
x2 <- replicate(10, roll())
x2

rolls <- replicate(10000, roll())
qplot(rolls, binwidth=1)

?sample
# create sample space with bias probability

new_roll <- function(){
  die <- 1:6
  prob <- c(replicate(5, 0.125), (0.125*3))
  dice <- sample(die, size = 2, replace = TRUE, prob = prob)
  sum(dice)
}

rolls2 <- replicate(10000, new_roll())
qplot(rolls2, binwidth=1)
