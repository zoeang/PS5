library(zoo)
Trapezoid<- function(frame){
            x <- frame[,1]
            y <- frame[,2]
            id <- order(x)
            AUC <- sum(diff(x[id])*abs(rollmean(y[id],2)))
            }