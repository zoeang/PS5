
## Load libraries and set working directory
rm(list = ls())
library(devtools)
library(roxygen2)
setwd("C:/Users/zoeja/OneDrive/Documents/Spring2018/R/PS5") #This will need to be changed to match your directory

getwd()
## This is run once when the package strcuture is first created


## This can be run many times as the code is updates
current.code <- as.package("integrateIt")
load_all(current.code)
document(current.code)
test(current.code)
## Let's look at a function


a<-new('trapezoid', x=1:10, y=1:10, result=20)
a2<-integrateIt()
print(a)



## Let's try it out
x<-seq(1,9,1)
y<-c(2,3,7,3,800,8,9,4)
a2<-integrateIt(x,y,a,b, "trap")

print(a2)





