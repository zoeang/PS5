integrateIt<- function(x, y, a, b, rule){
  if(length(x)!=length(y)){
    print("x and y should be of the same length")
    stop
    }
  if(rule=="trap"){

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
    return(trapezoid(x, y, a, b, rule))
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
    return(simpsons(x, y, a, b, rule))
  } else {
    print("'rule' does not properly indicate the class of the integration method.")
  }
  if(!(length(x)==length(y))){print("x and y are not of equal length")}
}

