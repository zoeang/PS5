setClass(Class="trapezoid",
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

setValidity(Class = "trapezoid", function(object){
  test1<-length(object@x)==length(object@y) 
  if(test1 ==F){return("x and y are not of equal length")}
}
)

setMethod("initialize", "trapezoid", function(.Object, ...){
  value=callNexMethod()
  validObject(value)
  return(value)
})


setGeneric("integrateIt",
           function(object=c('trapezoid', 'simpsons')) { #***
             standardGeneric("integrateIt")
           })
#@export
setMethod("integrateIt", "trapezoid",
          function(object){ #the argument of functio MUST be the same as the argument in the generic
            #if creating a method for an existing generic/function, use the help file to
            #find the argument for the function of the new method 
            return(object@trapezoid)
          })
#@export
setMethod("print", "trapezoid",
          function(x){ #the argument of functio MUST be the same as the argument in the generic
            #if creating a method for an existing generic/function, use the help file to
            #find the argument for the function of the new method 
            return(print("The trapezoid approximation is:",x@result))
          })
