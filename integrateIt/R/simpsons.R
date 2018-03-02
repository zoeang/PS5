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

