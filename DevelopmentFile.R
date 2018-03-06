
## Load libraries and set working directory
library(devtools)
library(roxygen2)
setwd("C:/Users/zoeja/OneDrive/Documents/Spring2018/R/PS5") #This will need to be changed to match your directory

getwd()
## This is run once when the package strcuture is first created

#create(integrateIt)
#document()
## This can be run many times as the code is updates
current.code <- as.package("integrateIt")
load_all(current.code)
document(current.code)
test(current.code)
## Let's look at a function

## Let's try it out
x<-c(1,2)
y<-c(3,4)
squaresObject <- addSquares(x, y)
squaresObject
x<-seq(1,9,1)
y<-c(2,3,7,3,800,8,9,4,1)
integrateIt(x,y,a,b, "simpsons")
print(x)
print.simpson <- function(){

}
print(object)

