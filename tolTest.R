tolTest<-function(fun, tolerance, rule, start, correct){
  #fun
  if(fun=="trapezoid"){
    integrate(trapezoid(),
    trapezoid<- function(x, y, a, b, rule){
      n<-length(x)
      a<-min(x)
      b<-max(x)
      h<- (b-a)/n
      midx<-3:length(x)-1
      id <- order(x)
      AUC<- h/2*(y[1]+2*sum(y[midx])+y[length(y)])
      print(c(x,y,AUC, rule))
      # start and tolerance
      i<- start
      while (tolerance< #){
             i=i+1
  }
  if(fun=="simpsons")
  
  
 
  }
  
  
  
  
  
  
  
  
  
  
  output<-list(fun, tolerance, rule, start, correct, n, error)
  return()
}