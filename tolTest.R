tolTest<-function(fun, tolerance, rule, start, correct){
  #fun
  if(rule=="trapezoid"){
    n<-length(x)
    a<-min(x)
    b<-max(x)
    h<- (b-a)/n
    midx<-3:length(x)-1
    id <- order(x)
    AUC<- h/2*(y[1]+2*sum(y[midx])+y[length(y)])

    # start and tolerance
      
     while (tolerance< correct-AUC){
             start=start+1
             h<-(b-a)/start
             AUC<-h/2*(y[1]+2*sum(y[midx])+y[length(y)])
             n<-start
      }
  }
  if(rule=="simpsons")
    n<-length(x)
  a<-min(x)
  b<-max(x)
  h<- (b-a)/n
  #multiple even index by 4
  #multiple odd index by 2
  even4<-seq(2,n-1,2)
  odd2<-seq(3,n-1,2)
  S<- h/3*(y[1]+4*sum(y[even4])+ 2*sum(y[odd2])+ y[length(y)])
  while (tolerance< correct-AUC){
    start=start+1
    h<-(b-a)/start
    S<-h/3*(y[1]+4*sum(y[even4])+ 2*sum(y[odd2])+ y[length(y)])
    n<-start
  }
  
  
  
  
  
  
  
  
  
  
  
  output<-list(fun, tolerance, rule, start, correct, n, error)
  return(output)
}