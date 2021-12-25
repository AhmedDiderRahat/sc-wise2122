#Atomic Vector
die <- c(1,2,3,4,5,6)
print(is.vector(die))

#Atomic vector with one element
five <- 5
print(is.vector(five))

sprintf('Lengh of five =  %i', length(five))
sprintf('Length of die = %i', length(die))

#Double are the default data type in R. If we state a=1, then its automatically store 1 as double
die <- c(1,2,3,4,5,6)
sprintf('Type of die is %s', typeof(die))

#If we want to store as Integers then have to ends each data with L
int <- c(-1L, 2L, 4L)
sprintf('Type of int is = %s', typeof(int))


#Character are covered with two quotations 
text <- c("hello", "world")
sprintf('Type of Text = %s', typeof(text))

#Logical
logic <- c(TRUE, 3>5, 3<5)
paste(c("Logic = ", logic), collapse=" ")

sprintf('Type of logic = %s', typeof(logic))

xx <- raw(2)
xx[1] <- as.raw(40)     # NB, not just 40.
xx[2] <- charToRaw("A")
xx       ## 28 41   -- raw prints hexadecimals
dput(xx) ## as.raw(c(0x28, 0x41))
as.integer(xx)

print(xx)


#Making cards

hand <- c("ace", "king", "queen", "jack", "ten")
hand

#attributes
names(die) <- c("one", "two", "three", "four", "five", "six")
attributes(die)

print(die)

#Update the names attributes
names(die) <- c("uno", "dos", "tres", "quarto", "cinco", "seis")
print(die)

#Remove names attributes
names(die) <-NULL
print(die)

#Set dimension to a vector

#make 2x3 dim
dim(die) <- c(2,3)
die

#make 3x2 dim
dim(die) <- c(3,2)
die

#Matrices

#By default it will fill the matrix column by column
m <- matrix(die, nrow = 2)
print(m)

#But, if we specify byrow=TRUE, then it will fill row by row
m <- matrix(die, nrow = 2, byrow = TRUE)
print(m)

# Here, class of die is numeric and type is double
die <- c(1,2,3,4,5,6)
typeof(die)
class(die)

#if we convert numeric to matrix
dim(die) <- c(2,3)
die
typeof(die)
class(die)
#here, class is changed but the type is as same as before


#Dates and Times
now <- Sys.time()
now
typeof(now)
class(now)

#See the seconds passed from 1/1/1970 (UTC)
unclass(now)

#Factor
gender <- factor(c("male", "male", "female", "female", "male"))
print(gender)

typeof(gender)
class(gender)
unclass(gender)

#Lists
list1 <- list(100:120, "Rahat", list(FALSE, TRUE))
list1

#Data Frames
df <- data.frame(face=c("ace", "two", "six"),
                 suit=c("clubs", "clubs", "clubs"),
                 value=c(1,2,3))
df

typeof(df)
class(df)
#str function return the structure of the data frame with values
str(df)

#Loading data sets
head(deck)

#get working directory 
getwd()
