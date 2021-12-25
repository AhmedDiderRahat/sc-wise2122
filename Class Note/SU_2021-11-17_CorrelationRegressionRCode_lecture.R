plot(Fertility ~ Education, swiss)
abline(h=mean(swiss$Fertility), v=mean(swiss$Education), col="blue")
cov(swiss)

x <- c(2,4,3,8,3)
y <- c(7,1,2,4,1)
cor(x,y)  ## r_xy
cor(x,y)^2  ## R^2

## decomposition of sum of squares
(linmod <- lm(y~x))
y
(yhat <- predict(linmod))
(TotalSS <- sum((y - mean(y))^2))
(ModelSS <- sum((yhat - mean(y))^2))
(ErrorSS <- sum((y - yhat)^2))
ModelSS + ErrorSS
ModelSS / TotalSS

plot(x,y)
abline(linmod, col="blue")