
## Load libraries and set working directory
rm(list = ls())
library(devtools)
library(roxygen2)
setwd("C:/Users/zoeja/OneDrive/Documents/Spring2018/R/PS5") #This will need to be changed to match your directory

getwd()
## This is run once when the package strcuture is first created

integrateIt<- function(x, y, a, b, rule){
  if(rule=="trap"){
    library(zoo)
    trapezoid<- function(x, y, a, b, rule){
      n<-length(x)
      a<-min(x)
      b<-max(x)
      h<- (b-a)/n
      midx<-3:length(x)-1
      id <- order(x)
      AUC<- h/2*(y[1]+2*sum(y[midx])+y[length(y)])
      return(new("trapezoid", x=x,y=y, result=AUC))
    }
    trapezoid(x,y,a,b,rule)
  } else if (rule=="simpsons"){
    simpsons<-function(x, y, a, b, rule){
      n<-length(x)
      a<-min(x)
      b<-max(x)
      h<- (b-a)/n
      #multiple even index by 4
      #multiple odd index by 2
      even4<-seq(2,n-1,2)
      odd2<-seq(3,n-1,2)
      S<- h/3*(y[1]+4*sum(y[even4])+ 2*sum(y[odd2])+ y[length(y)])
      return(new("simpsons", x=x,y=y, result=S))
    }
    simpsons(x, y, a, b, rule)
  } else {
    print("'rule' does not properly indicate the class of the integration method.")
  }
  if(!(length(x)==length(y))){print("x and y are not of equal length")}
}


## This can be run many times as the code is updates
current.code <- as.package("integrateIt")
load_all(current.code)
document(current.code)
test(current.code)
## Let's look at a function

## Let's try it out

x<-seq(1,9,1)
y<-c(2,3,7,3,800,8,9,4,1)
integrateIt(x,y,a,b, "simpsons")



