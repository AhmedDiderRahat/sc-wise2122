roll <- function(){
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}

roll2 <- function(bones=1:6){
  dice <- sample(bones, size = 2, replace = TRUE)
  sum(dice)
}

roll()
roll2()
roll2(1:3)

