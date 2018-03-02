integrateIt<- function(frame, a, b, rule){
  if(rule=="Trap"){
    library(zoo)
    Trapezoid<- function(frame){
      x <- frame[,1]
      y <- frame[,2]
      id <- order(x)
      AUC <- sum(diff(x[id])*abs(rollmean(y[id],2)))
      print(AUC)
    }
  } else if (rule=="Simpson"){
    simpsons<-function(frame){
      n<-nrow(frame)
      h<- (frame[n,1]-frame[1,1])/n
      #multiple even index by 4
      #multiple odd index by 2
      even4<-seq(2,n-1,2)
      odd2<-seq(3,n-1,2)
      S<- h/3*(frame[1,2]+4*sum(frame[even4,2])+ 2*sum(frame[odd2,2])+ frame[n,2])
      print(S)
    }
  } else {
    print("rule does not properly indicate the class of the integration method.")
  }
}