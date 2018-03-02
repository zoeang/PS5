integrateIt<- function(x, y, a, b, rule){
  if(rule=="Trap"){
    library(zoo)
    trapezoid<- function(x, y, a, b, rule){
      a<-min(x)
      b<-max(x)
      id <- order(x)
      AUC <- sum(diff(x[id])*abs(rollmean(y[id],2)))
      print(c(x,y,AUC, rule))
    }
  } else if (rule=="Simpson"){
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
      print(c(x,y,S, rule))
    }
  } else {
    print("'rule' does not properly indicate the class of the integration method.")
  }
}