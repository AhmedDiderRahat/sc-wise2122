## the example is from App. E of the Baumer book
require(mosaicData)
## for data set RailTrail
plot(volume ~ hightemp, data=RailTrail, las=1)
## parametric: we enforce a straight line
straightline <- lm(volume ~ hightemp, data=RailTrail)
summary(straightline)
abline(straightline, col="blue")

## still force the line to be linear
## but use absolute instead of squared deviations 
require(L1pack)
linmod1 <- l1fit(RailTrail$hightemp, RailTrail$volume)
## almost no difference to the least squares line
abline(linmod1, col="red")

## still force the line to be linear
## but robustify by downweighting outlying observations
## with a different approach (MM estimation)
require(robustbase)
linmodMM <- lmrob(volume ~ hightemp, data=RailTrail)
## almost no difference to the least squares line
abline(linmodMM, col="black")

## non-parametric: we smooth, with local straight lines
##    family="gaussian" makes sure that the estimation is least squares
##         like in the linear case
##    the default would be more robust agains outliers
## points far from the location of estimation are downweighted
smoothedline <- loess.smooth(RailTrail$hightemp, 
                             RailTrail$volume, 
                             family="gaussian")
## there is no reasonable summary available
lines(smoothedline, col="magenta")

## reduce the proportion of data used from 
##      default 2/3 to 1/2
smoothedline_half <- loess.smooth(RailTrail$hightemp, 
                                  RailTrail$volume, 
                                  family="gaussian", 
                                  span=0.5)
lines(smoothedline_half, col="cyan")

## reduce the proportion of data used from default 2/3 to 1/3
smoothedline_onethird <- loess.smooth(RailTrail$hightemp, 
                                      RailTrail$volume, 
                                      family="gaussian", 
                                      span=1/3)
lines(smoothedline_onethird, col="brown")

## reduce the proportion of data used from default 2/3 to 1/5
smoothedline_onefifth <- loess.smooth(RailTrail$hightemp, 
                                      RailTrail$volume, 
                                      family="gaussian", 
                                      span=.2)
lines(smoothedline_onefifth, col="red")

#####################################################################

## low order polynomial instead (Taylor!)
## quadratic
quadline <- lm(volume ~ poly(hightemp,2), 
               data=RailTrail)
summary(quadline)
lines(40:99, predict(quadline, 
      newdata=data.frame(hightemp=40:99)), 
      col="darkgreen")

## cubic
cubline <- lm(volume ~ poly(hightemp,3), 
               data=RailTrail)
summary(cubline)
lines(40:99, predict(cubline, newdata=data.frame(hightemp=40:99)), 
      col="cyan")

## quartic
quartline <- lm(volume ~ poly(hightemp,4), 
              data=RailTrail)
summary(quartline)
lines(40:99, predict(quartline, newdata=data.frame(hightemp=40:99)), 
      col="darkgreen")
