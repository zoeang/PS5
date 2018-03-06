#' The output of the integrateIt function
#' 
#' Object of class simpsons is from the output of the integrateIt function
#' 
#' An object of class simpsons has the following slots:
#' \itemize{
#' \item \code{x} A vector of x values
#'  \item \code{y} A vector of y values
#'   \item \code{result} The approximated area under the definite integral
#' }
#' 
#' @author Zoe <\email{zoeang@wustl.edu}>
#' @aliases simpsons-class
#' @rdname integrateIt
#' @export
setClass(Class="simpsons",
         representation = representation(
           x="numeric", #set the class of the slot
           y="numeric",
           result="numeric"
         ),
         prototype= prototype(
           x=c(), #leave the default data empty
           y=c(),
           result=c()
         )
)
#' @export
setValidity(Class = "simpsons", function(object){
  test1<-length(object@x)==length(object@y) 
  if(test1 ==F){return("x and y are not of equal length")}
}
)
#@export
setMethod("initialize", "simpsons", 
          function(.Object, ...){
            value=callNextMethod()
            validObject(value)
            return(value)
})
#@export
setGeneric("integrateIt",
           function(object=c('trapezoid', 'simpsons')) { #***
             standardGeneric("integrateIt")
           })

#@export
setMethod("integrateIt", "simpsons",
          function(object){ #the argument of functio MUST be the same as the argument in the generic
            #if creating a method for an existing generic/function, use the help file to
            #find the argument for the function of the new method 
            return(object@simpsons)
          })


#@export
setMethod("print", "simpsons",
          function(x){ #the argument of functio MUST be the same as the argument in the generic
            #if creating a method for an existing generic/function, use the help file to
            #find the argument for the function of the new method 
            return(x@result)
          })
