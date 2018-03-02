library(zoo)
trapezoid<- function(x, y, a, b, rule){
  n<-length(x)
  a<-min(x)
  b<-max(x)
  h<- (b-a)/n
  midx<-3:length(x)-1
  id <- order(x)
  AUC<- h/2*(y[1]+2*sum(y[midx])+y[length(y)])
  print(c(x,y,AUC, rule))
}
