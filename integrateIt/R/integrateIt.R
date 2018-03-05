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
      
      return(new(class="trapezoid", x=x, y=y, result=AUC))
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
      return(new(class="simpson", x=x, y=y, result=S))
    }
    simpsons(x, y, a, b, rule)
  } else {
    print("'rule' does not properly indicate the class of the integration method.")
  }
}

