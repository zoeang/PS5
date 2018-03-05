 \name{integrateIt}
 \alias{integrateIt}
 \title{Approximate the definite integral of a function}
 \usage{
 integrateIt(x,y,a,b,rule)
 }
 \arguments{
 \item{x}{A vector of x values}
 \item{y}{A vector that is the same length as
 \code{x}. The value of y must correspond with the value of x for a given index.}
 }
 \item{a}{The lower bound of the integral}
 \item{b}{The upper bound of the integral}
 \item{rule}{A string of "trap" or "simpsons" that indicates the method of approximation}
 \value{
 A list with the elements
 \item{x}{The x vector}
 \item{y}{The y vector}
 \item{Approx. Area}{The approximate area under the curve}
 \item{rule}{The method of approximation used}
 }
 \description{
 Approximate the definite integral using the trapezoid or simpson method
 }
 \note{
 This will not work
 }
 \examples{
 x<-1:10
 y<-c(5,2,7,4,6,1,3,5,4,9)

 integrateIt(x,y,a,b,rule="trap")
 integrateIt(x,y,a,b,rule="simpsons")
 }
 \author{
 Zoe
 }
 \seealso{
 \code{\link{integrate}}
 }