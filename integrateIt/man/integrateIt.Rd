\name{integrateIt}
\alias{integrateIt}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Approximate definite integrals}
%%  ~~function to do ... ~~
}
\description{This function approximates definite integrals using two methods: the trapezoid rule; and the Simpsons rule
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
integrateIt(x,y,a,b,rule)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{a vector of x value; must be evenly spaced and correspond with the correct y value
%%     ~~Describe \code{x} here~~
}
  \item{y}{a vector of corresponding f(x) or y values; must be in order, as paired with x
%%     ~~Describe \code{y} here~~
}
 \item{a}{a numeric of the minimum value of x. This argument is not needed, as it will be calculated in the function
%%     ~~Describe \code{y} here~~
}
 \item{b}{a numeroc of the maximum value of x. This argument is not needed, as it will be calculated in the function
%%     ~~Describe \code{y} here~~
}
 \item{rule}{a string of "trap" or "simpsons", which indicated which approximation method will be used
%%     ~~Describe \code{y} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
    x<-1:10
    y<-c(5,2,7,4,6,1,3,5,4,9)
    integrateIt(x,y,a,b,rule="trap")
    integrateIt(x,y,a,b,rule="simpsons")
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
