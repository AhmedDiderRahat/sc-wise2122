## R code from Nov 10
sort(swiss$Fertility)     ## for boxplot by hand
boxplot(swiss$Fertility, horizontal=TRUE)
## not used, makes R draw what we drew by hand   

## for the histogram
t(t(table(cut(swiss$Fertility, breaks=c(34,55,65,75,85,95)))))

## histogram
## default, equal width classes, Freq vertical axis
hist(swiss$Fertility) 
## our classes, not equal width: default is density vertical axis
hist(swiss$Fertility,  breaks=c(34,55,65,75,85,95))
## almost our classes, equal width: default is Freq vertical axis
hist(swiss$Fertility, breaks=seq(35, 95, 10))
## almost our classes, equal width: force density vertical axis
hist(swiss$Fertility, breaks=seq(35, 95, 10), freq=FALSE)

## kernel density estimate
## rectangular kernel corresponds to moving window approach
plot(density(swiss$Fertility, kernel="rectangular"))
## making window wider or narrower flattens curve or makes it more wobbly
plot(density(swiss$Fertility, kernel="rectangular", adjust=2))
plot(density(swiss$Fertility, kernel="rectangular", adjust=0.5))
## kernels other than rectangular are smoother,
## e.g. the default gaussian kernel
plot(density(swiss$Fertility))
